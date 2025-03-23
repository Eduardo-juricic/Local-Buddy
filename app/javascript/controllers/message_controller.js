import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    const meta = document.querySelector("meta[name='current-user-id']")
    const currentUserId = meta ? meta.content : null
    const authorId = this.element.dataset.messageAuthorIdValue
    if (currentUserId && String(authorId) === String(currentUserId)) {
      this.element.classList.add("sent")
    } else {
      this.element.classList.add("received")
    }
  }
}
