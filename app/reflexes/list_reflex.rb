class ListReflex < ApplicationReflex
  def create(title)
    List.create(title: title)
  end
end
