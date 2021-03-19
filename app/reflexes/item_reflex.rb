class ItemReflex < ApplicationReflex
  def toggle
    item = Item.find(element.dataset[:id])
    item.update(completed: (item.completed? ? false : true))
  end
end
