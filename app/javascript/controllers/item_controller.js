import ApplicationController from './application_controller'

export default class extends ApplicationController  {
  static targets = [ 'description', 'deadline' ]

  add_item(e) {
    e.preventDefault()
    let desc = this.descriptionTarget,
        deadline = this.deadlineTarget;

    this.stimulate('Item#create', desc.value, deadline.value)
    desc.value = ''
    deadline.value = ''
  }

  toggle(e) {
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

  update(e) {
    e.preventDefault()

    let desc = e.path[1][0],
        date = e.path[1][1],
        id = e.target.dataset.item;

    this.stimulate('Item#update', id, desc.value, date.value)

  }

}
