import ApplicationController from './application_controller'

export default class extends ApplicationController {

  static targets = ['title']

  create(event) {
    event.preventDefault()
    this.stimulate('List#create', this.titleTarget.value)
  }

}
