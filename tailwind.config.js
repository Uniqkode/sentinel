/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    "./lib/**/*.dart",
    "./build/jaspr/**/*.html",
  ],
  theme: {
    extend: {
      fontFamily: {
        sans: ['Inter', 'system-ui', '-apple-system', 'sans-serif'],
      },
    },
  },
  plugins: [],
};
