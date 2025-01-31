module.exports = {
  stories: ['../../../app/assets/javascripts/components/**.story.js'],
  addons: [
    '@storybook/addon-actions/register',
    {
      name: '@storybook/addon-postcss',
      options: {
        postcssLoaderOptions: {
          implementation: require('postcss'),
        },
      },
    },
  ]
};
