Rails.application.routes.draw do


  root 'homes#top'


  resources :posts
end
