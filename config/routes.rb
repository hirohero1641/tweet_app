Rails.application.routes.draw do
  get 'posts/index' => 'posts#index'
  get 'posts/new' => 'posts#new'
  post 'posts/create' => 'posts#create'
  get 'posts/:id/edit' => 'posts#edit'
  get 'posts/:id' => 'posts#show'
  get "/"=>"home#top"
  get "about"=>"home#about"
  post "posts/:id/update" => "posts#update"
  post "posts/:id/destroy" => "posts#destroy"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
