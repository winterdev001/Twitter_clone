Rails.application.routes.draw do  
  root 'greets#index'  
  resources :greets do
    collection do
      post :confirm
    end
  end
end
