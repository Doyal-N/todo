import ApplicationController from './application_controller'

export default class extends ApplicationController  {
  static targets = [ 'description', 'date' ]
  static targets = [ 'note', 'desc', 'date' ]

  add_item(e) {
    e.preventDefault()
    let desc = this.descriptionTarget
    let date = this.dateTarget
    this.stimulate('Item#create', desc.value, date.value)
    desc.value = ''
    date.value = ''
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
    let note = this.noteTarget,
    desc = this.descTarget,
    date = this.dateTarget,
    item_id = e.target.dataset.item

    this.stimulate('ItemReflex#update', item_id, desc.value, note.value, date.value)
    note.value = ''
    desc.value = ''
    date.value = ''
  }

}
