import { Controller } from "stimulus"

var i = 0;
var txt = 'Get those pesky bottles out of your flat or office!'; /* The text */
var speed = 100; /* The speed/duration of the effect in milliseconds */

function typeWriter() {
  if (i < txt.length) {
    document.getElementById("Typing").innerHTML += txt.charAt(i);
    i++;
    setTimeout(typeWriter, speed);
  }
}
