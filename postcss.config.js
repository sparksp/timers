module.exports = {
    plugins: [
        require("tailwindcss")('tailwind.config.js'),
        require("postcss-elm-tailwind")({
            elmFile: "src/Tailwind.elm",
            elmModuleName: "Tailwind"
        }),
        require("autoprefixer")
    ]
};
