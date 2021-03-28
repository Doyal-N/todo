class ListReflex < ApplicationReflex
  def create(title)
    List.create(title: title)
  end

  def delete
    list = List.find(element.dataset[:id])
    list.destroy
  end
end
