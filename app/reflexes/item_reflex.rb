class ItemReflex < ApplicationReflex
  def toggle
    item = Item.find(element.dataset[:id])
    item.toggle!(:completed)
  end
end
