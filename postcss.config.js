module.exports = {
    plugins: [
        require("tailwindcss"),
        require("postcss-elm-tailwind")({
            elmFile: "src/Tailwind.elm",
            elmModuleName: "Tailwind"
        }),
        require("autoprefixer")
    ]
};
