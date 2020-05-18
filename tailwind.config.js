module.exports = {
    purge: {
        content: [
            './dist/**/*.html',
            './dist/**/*.js'
        ],
    },
    theme: {
        extend: {
            gridTemplateColumns: {
                header: '1fr auto 1fr'
            }
        }
    },
    variants: {
        opacity: ['responsive', 'hover', 'focus', 'disabled'],
        cursor: ['responsive', 'disabled']
    },
}