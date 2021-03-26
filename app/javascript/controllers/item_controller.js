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

  show_form(e) {
    let item_id = e.target.dataset.item
    let form = document.querySelector(`.form-${item_id}`)

    if(e.target.matches('.btn')) {
      if(form.classList.contains('d-none')) {
        form.classList.remove('d-none')
      } else {
        form.classList.add('d-none')
      }
    }
  }

}
