import ApplicationController from './application_controller'

export default class extends ApplicationController  {
  static targets = [ 'description', 'date' ]

  add_item(e) {
    e.preventDefault()
    let desc = this.descriptionTarget
    let date = this.dateTarget
    this.stimulate('Item#create', desc.value, date.value)
    desc.value = ''
    date.value = ''
  }
}
