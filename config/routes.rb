Rails.application.routes.draw do
  # resorces :lists
  get 'lists/index'
  post 'lists' => 'lists#create'
  get 'lists/:id' => 'lists#show', as: 'book'
  get 'lists/edit'
  get '/top' => 'homes#top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
