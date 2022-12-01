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

    if (document.querySelectorAll('.selected').length < 5){
    this.cardTarget.classList.toggle('selected')
    const url = `${window.location.href}/${this.cardTarget.id}/toggle_selected`
    fetch(url)
      // document.querySelectorAll('.selected')[5].classList.remove('selected'
    } else if (document.querySelectorAll('.selected').length == 5 && this.cardTarget.classList.contains('selected')){
      this.cardTarget.classList.toggle('selected')
      const url = `${window.location.href}/${this.cardTarget.id}/toggle_selected`
      fetch(url)
    }
  }
}
