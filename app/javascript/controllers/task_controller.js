import { Controller } from "@hotwired/stimulus";
import { patch } from "@rails/request.js";

// Connects to data-controller="task"
export default class extends Controller {
  connect() { }

  submit() {
    const form = this.element.querySelector("form");
    form.submit();
    form.reset();
  }

  update(event) {
    const title = event.currentTarget.value;
    const id = event.currentTarget.dataset.taskId;

    patch(`/tasks/${id}`, { body: { task: { title } } });
  }
}
