Rails.application.routes.draw do
  resources :greets
  root 'greets#index'  
end
