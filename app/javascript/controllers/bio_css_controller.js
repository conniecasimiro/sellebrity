import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="bio-css"
export default class extends Controller {
  static targets = ["card", "image"]
  connect() {
    console.log("connected!")
    console.log(this.cardTarget.clientHeight)
    this.imageTarget.height = this.cardTarget.clientHeight
  }
}
