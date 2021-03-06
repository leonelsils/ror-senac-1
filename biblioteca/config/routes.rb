Rails.application.routes.draw do
  get "authors" => 'authors#index'
  post 'authors' => 'authors#create'
  get 'author/new' => 'authors#new', as: :new_author
  get "author/:id" => 'authors#show', as: :author
  get "author/:id/edit" => 'authors#edit', as: :edit_author
  patch "author/:id" => "authors#update"
  delete "author/:id" => "authors#destroy"

  get 'books' => 'books#index'
  root to: "home#index"



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
