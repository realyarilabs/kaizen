const defaultTheme = require('tailwindcss/defaultTheme')

module.exports = {
  content: [
    './public/*.html',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/views/**/*.{erb,haml,html,slim}',
  ],
  theme: {
    width: ({ theme }) => ({
      auto: "auto",
      ...theme("spacing"),
      "c-260": "260px",
    }),
    extend: {
      fontFamily: {
        sans: ['Monserrat', ...defaultTheme.fontFamily.sans],
      },
      colors: {
        'c-white': 'rgba(255, 255, 255, 1)',
        'c-dark-8': 'rgba(229, 231, 235, 1)',
        'c-dark-6': 'rgba(156, 163, 175, 1)',
        'c-dark-4': 'rgba(75, 85, 99, 1)',
        'c-main-primary': 'rgba(13, 143, 231, 1)',
        'c-main-secondary': 'rgba(89, 95, 239, 1)',
        'c-main-primary-text': 'rgba(0, 50, 84, 1)',
        'c-main-secondary-text': 'rgba(99, 115, 129, 1)',
        'c-main-primary-bg': 'rgba(0, 18, 31, 1)',
        'c-main-secondary-bg': 'rgba(230, 241, 249, 1)',
        'c-main-primary-hover': 'rgba(0, 50, 84, 0.16)',
        'c-main-secondary-hover': 'rgba(89, 95, 239, 0.1)',
        'c-main-primary-btn-hover': 'rgba(19, 127, 200, 1)',
        'c-main-primary-btn-hover': 'rgba(80, 85, 210, 1)',
        'c-accents-primary': 'rgba(13, 198, 231, 1)',

      }

    }
  },
  plugins: [
    // require('@tailwindcss/forms'),
    // require('@tailwindcss/typography'),
    // require('@tailwindcss/container-queries'),
    // require('flowbite/plugin')
  ]
}
