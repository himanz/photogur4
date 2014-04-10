Photogur4::Application.routes.draw do
  get 'images' => 'images#index'  

  get 'images/0' => 'images#pic0'
  get 'images/1' => 'images#pic1'
  get 'images/2' => 'images#pic2'
end