Rails.application.routes.draw do
  # resorces :lists
  get '/top' => 'homes#top'
  get 'lists/index'
  post 'lists' => 'lists#create'
  get 'lists/:id' => 'lists#show',as: 'book'
  get 'lists/:id/edit' => 'lists#edit', as: 'edit_book'
  patch 'lists/:id' => 'lists#update', as: 'update_book'
  delete 'lists/:id' => 'lists#destroy', as: 'destroy_book'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
