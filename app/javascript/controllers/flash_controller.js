import { Controller } from '@hotwired/stimulus';

export default class extends Controller {
  connect() {
    setTimeout(() => {
      this.element.classList.add('opacity-0');
      setTimeout(() => this.element.remove(), 1500);
    }, 3500);
  }
}
