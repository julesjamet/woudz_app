Rails.application.routes.draw do
  # get 'pictures/show'
  # get 'products/index'
  # get 'products/new'
  # get 'products/edit'
  # get 'products/show'
  # get 'pages/index'
  resources :pictures do
    resources :products
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
root to: 'pages#index'
get '/pages/contact', to: 'pages#contact'
get '/pages/about', to: 'pages#about'
end
