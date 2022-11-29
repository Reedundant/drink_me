import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["flash"]
  connect() {
    // console.log('connected!');
    this.fadeOut();
  }

  fadeOut() {
    this.flashTarget.classList.add("fade-out-animation");
  }
}
