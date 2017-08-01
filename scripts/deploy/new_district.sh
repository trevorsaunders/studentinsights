# Usage:
# ./new_district.sh "My New District Name"

DISTRICT_NAME=$1

if [ -z "$DISTRICT_NAME" ]; then
  echo "🚨  🚨  🚨  Please supply a district name."; exit 0;
else
  echo "District name: $DISTRICT_NAME."
fi

HEROKU_APP_NAME=$(sed -e 's/ /-/g' <<< "$DISTRICT_NAME" | awk '{print tolower($0)}')

echo "Creating Heroku app $HEROKU_APP_NAME..."

heroku create $HEROKU_APP_NAME

HEROKU_GIT_REMOTE_NAME="heroku-$HEROKU_APP_NAME-student-insights"
HEROKU_GIT_REMOTE_ADDRESS="https://git.heroku.com/$HEROKU_APP_NAME.git"

echo "Adding nodejs buildpack..."

heroku buildpacks:add --index 1 heroku/nodejs --app $HEROKU_APP_NAME
heroku buildpacks:add --index 2 heroku/ruby --app $HEROKU_APP_NAME

echo "Pushing code to Heroku app..."

git remote add $HEROKU_GIT_REMOTE_NAME $HEROKU_GIT_REMOTE_ADDRESS
git push $HEROKU_GIT_REMOTE_NAME master

echo "Migrating the database..."

heroku run rake db:migrate --app $HEROKU_APP_NAME

echo "Setting config vars..."

heroku config:set DISTRICT_NAME="$DISTRICT_NAME" --app $HEROKU_APP_NAME

echo "Do you want to fill up this database with fake (very fake) data? (Y or N)"

read FILL_WITH_FAKE_DATA

if [ $FILL_WITH_FAKE_DATA = "Y" ]; then
  echo "Generating some fake data..."
  heroku run rake db:seed --app $HEROKU_APP_NAME
  echo "All done!"
  echo "Log in with {email => demo-admin@example.com, pw => demo-password}"
  echo "Taking you there now..."
  open "https://$HEROKU_APP_NAME.herokuapp.com" -a "Google Chrome"
else
  echo "All done!"
fi

