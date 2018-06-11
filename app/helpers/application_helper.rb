module ApplicationHelper
  def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end

  # IE11 reports HTML1500 warnings on the console if tags are not explicitly
  # closed (like happens if you used `tag`).  Here we're rendering tags with
  # attributes and no content to be able to parse the JSON in JS.
  def json_div(options = nil)
    content_tag('div', '', options)
  end

  # This returns a string pointing to a webpack bundle.  In development,
  # this is generated by the webpack watch task; in production it's
  # a compiled hashed file, so we read the hash from the manifest file.
  def webpack_bundle(name)
    if Rails.env.production?
      @production_manifest ||= JSON.parse(File.read('public/build/manifest.json'))
      filename = @production_manifest[name]
      "/build/#{filename}"
    else
      "/dev/#{name}"
    end
  end
end
