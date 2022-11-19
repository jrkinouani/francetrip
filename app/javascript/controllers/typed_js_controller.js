import { Controller } from "@hotwired/stimulus"
import Typed from "typed.js"

export default class extends Controller {
  connect() {
    new Typed(this.element, {
      strings: ["Montagne", "Mer","Village","Végan","Culture","Outre-mer"],
      typeSpeed: 100,
      loop: true
    })
  }
}
