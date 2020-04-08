import regeneratorRuntime from "regenerator-runtime";
import { Elm } from "./src/Main.elm";
import "./src/assets/css/main.pcss";


const checkElement = async selector => {
    while (document.querySelector(selector) === null) {
        await new Promise(resolve => requestAnimationFrame(resolve))
    }
    return document.querySelector(selector);
};

document.addEventListener("DOMContentLoaded", function () {
    const mountPoint = document.querySelector("main");
    var app = Elm.Main.init({
        node: mountPoint,
        flags: null
    });

    app.ports.alarm.subscribe(function (cmd) {
        checkElement("audio#alarm").then(function (audio) {
            switch (cmd) {
                case "load":
                    audio.load();
                case "stop":
                    audio.stop();
                    break;

                case "play":
                    audio.play();
                    break;
            }
        });
    });
});