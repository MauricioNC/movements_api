import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="pagination"
export default class extends Controller {
  connect() {
    new DataTable('#movementsTable', {
      serverSide: true,
      ajax: '/data-source',
      pageLength: 15
    });
  }

  disconnect() {
    if (this.table) {
      this.table.destroy()
      this.table = null
    }
  }
}
