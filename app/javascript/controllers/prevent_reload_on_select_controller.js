import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="prevent-reload-on-select"
export default class extends Controller {
  static targets = ['button', 'card']
  // static values = {
  //   uiId: Number
  // }

  connect() {
    console.log(this.uiIdValue);
  }

  prevent(event) {
    event.preventDefault()
    this.cardTarget.classList.toggle('selected')
    const url = `${window.location.href}/${this.cardTarget.id}/toggle_selected`
    console.log(url)
    fetch(url)
  }
}
