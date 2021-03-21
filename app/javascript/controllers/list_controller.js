import ApplicationController from './application_controller'

export default class extends ApplicationController {

  static targets = ['title']

  add_list(event) {
    event.preventDefault()
    this.stimulate('List#create', this.titleTarget.value)
  }

}
