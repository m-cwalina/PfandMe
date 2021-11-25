import { Controller } from "stimulus"
import Swal from 'sweetalert2'

export default class extends Controller {
  static values = {pending: Boolean}
  connect() {
    console.log("Hello from Sweetalert controller");
  }

  fire(e) {
    if (this.pendingValue) {
      e.preventDefault()
      e.stopImmediatePropagation()
      Swal.fire({
        title: 'Do you want to book this offer?',
        showCancelButton: true,
        confirmButtonText: 'Accept',
      }).then((result) => {
        /* Read more about isConfirmed, isDenied below */
        if (result.isConfirmed) {
          this.pendingValue = false
          this.element.click()
        }
      })
    }
  }
}
