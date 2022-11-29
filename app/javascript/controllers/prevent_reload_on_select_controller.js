import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="prevent-reload-on-select"
export default class extends Controller {
  static targets = ['button']


  connect() {

    console.log('hello');
  }
}
