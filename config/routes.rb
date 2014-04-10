Photogur4::Application.routes.draw do
  get 'images' => 'images#index' 

  resources :images
  get 'images/new' => "images#new"
  post 'images' => "images#create"

  get 'images/:id' => 'images#show'#, as: "pic" 
end