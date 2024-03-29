const colors = require('tailwindcss/colors')

module.exports = {
  theme: {
    colors: {
      transparent: 'transparent',
      current: 'currentColor',

      black: colors.black,
      white: colors.white,

      gray: colors.gray,
      red: colors.red,
      orange: colors.orange,
      green: colors.green,
      blue: colors.blue,
    },
    extend: {
      gridTemplateColumns: {
        header: '1fr auto 1fr'
      }
    },
    fontSize: {
      xs: '0.75rem',
      sm: '0.875rem',
      base: '1rem',
      lg: '1.125rem',
      xl: '1.25rem',
      '2xl': '1.5rem',
      '3xl': '1.875rem',
      '4xl': '2.25rem',
      '5xl': '3rem',
      '6xl': '4rem',
    },
  },
}