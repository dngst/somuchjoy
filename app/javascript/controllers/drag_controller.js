import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ['handle']

  startDrag(event) {
    event.preventDefault()
    this.initialX = event.clientX
    this.initialY = event.clientY
    this.dragging = true
  }

  drag(event) {
    if (!this.dragging) return

    const deltaX = event.clientX - this.initialX
    const deltaY = event.clientY - this.initialY

    this.element.style.left = `${this.element.offsetLeft + deltaX}px`
    this.element.style.top = `${this.element.offsetTop + deltaY}px`

    this.initialX = event.clientX
    this.initialY = event.clientY
  }

  stopDrag() {
    this.dragging = false
  }
}
