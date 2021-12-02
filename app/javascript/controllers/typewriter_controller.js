import { Controller } from "stimulus"

export default class extends Controller {

  typeWriter() {
    if (this.i < this.txt.length) {
      this.element.innerHTML += this.txt.charAt(this.i);
      this.i++;
      setTimeout(this.typeWriter.bind(this), this.speed);
    }
  }

  connect() {
    console.log("Hello")
    this.i = 0;
    this.txt = 'Get those pesky bottles out of your flat or office!'; /* The text */
    this.speed = 50; /* The speed/duration of the effect in milliseconds */
    this.typeWriter()
  }
}
