Photogur4::Application.routes.draw do
  get 'images' => 'images#index' 

  get 'images/:id' => 'images#show', as: "pic" 
end