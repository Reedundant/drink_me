import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ "loaderDiv" ];

  connect() {
    console.log("hello!");

    this.loading();
  }

  loading() {
    console.log(this.loaderDivTarget);
    window.addEventListener("load", () => {
      this.loaderDivTarget.classList.add("l-hidden");
    })
  }
}
