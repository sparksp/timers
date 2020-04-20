import "regenerator-runtime";
import { Elm } from "./Main.elm";
import "./assets/css/main.pcss";


const checkElement = async selector => {
    while (document.querySelector(selector) === null) {
        await new Promise(resolve => requestAnimationFrame(resolve))
    }
    return document.querySelector(selector);
};

var app = Elm.Main.init({
    flags: null
});

app.ports.alarm.subscribe((cmd: string) => {
    checkElement("audio#alarm").then((audio: HTMLAudioElement) => {
        switch (cmd) {
            case "load":
                audio.load();
            case "pause":
            case "stop":
                audio.pause();
                break;

            case "play":
                audio.currentTime = 0;
                audio.play();
                break;
        }
    });
});
