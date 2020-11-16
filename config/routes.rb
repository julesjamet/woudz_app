Rails.application.routes.draw do
  get 'pages/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
root to: 'pages#index'
get '/pages/contact', to: 'pages#contact'
get '/pages/about', to: 'pages#about'
end
