import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="navbar"
export default class extends Controller {
  static targets = ["colapsableElement"]
  connect() {
    console.log("hello from navbar controller :)");
  }
  colapse() {
    console.log("colapse !")
    this.colapsableElementTarget.classList.add("collapse")
    this.colapsableElementTarget.classList.remove("show")
  }
}
