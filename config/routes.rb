Rails.application.routes.draw do
  resources :todo_lists, shallow: true do
    resources :todo_items, except: %i[index show]
  end
end
