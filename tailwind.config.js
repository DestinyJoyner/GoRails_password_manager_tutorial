const defaultTheme = require("tailwindcss/defaultTheme");

module.exports = {
  content: [
    /* 
      Define which files Tailwind should scan for classes
      Includes views, helpers, javascript files, and custom components
    */
    "./app/views/**/*.{erb,haml,html,slim}",
    "./app/helpers/**/*.rb",
    "./app/assets/stylesheets/**/*.css",
    "./app/javascript/**/*.js",
  ],
  theme: {
    extend: {
      fontFamily: {
        sans: ["Inter var", ...defaultTheme.fontFamily.sans],
      },
    },
  },
  plugins: [],
  /* 
    Explicitly tell Tailwind where to find the input file
    and where to output the processed CSS
  */
  input: "./app/assets/stylesheets/application.tailwind.css",
  output: "./app/assets/builds/tailwind.css",
};
