import { Elm } from "./src/Main.elm";
import "./src/assets/css/main.pcss";

document.addEventListener("DOMContentLoaded", function () {
    const mountPoint = document.querySelector("main");
    Elm.Main.init({
        node: mountPoint,
        flags: null
    });
});