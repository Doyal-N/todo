class ItemReflex < ApplicationReflex
  def toggle
    item = Item.find(element.dataset[:id])
    item.toggle!(:completed)
  end

  def delete
    Item.find(element.dataset[:id]).delete
  end

  def create(description, deadline = nil)
    list = List.find(element.dataset[:list])
    list.items.create(description: description, completed_at: deadline)
  end

  def delete_done
    list = List.find(element.dataset[:list])
    list.items.destroy_all
  end

  def update(id, content, term)
    item = Item.find(id)
    item.update(description: content, completed_at: term)
  end
end
