module.exports = {
    plugins: [
        require('tailwindcss')('tailwind.config.js'),
        require('postcss-elm-tailwind')(
            { elmFile: 'src/Html/Tailwind.elm'
            , elmModuleName: 'Html.Tailwind'
            , formats:
                { svg:
                    { elmFile: 'src/Svg/Tailwind.elm'
                    , elmModuleName: 'Svg.Tailwind'
                    }
                }
            }
        ),
        require('autoprefixer')
    ]
};
