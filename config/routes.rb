Rails.application.routes.draw do
  get 'homes/top'

  get '/top' => 'homes#top'

  resources :posts
end
