Photogur4::Application.routes.draw do
  root :to => "images#index"
  get 'images' => 'images#index' 

  get 'images/new' => "images#new"
  post 'images' => "images#create"

  get 'images/:id/edit' => "images#edit", as: "edit_image"
  patch 'images/:id' => "images#update"

  get 'images/:id' => 'images#show', as: "pic" 
end