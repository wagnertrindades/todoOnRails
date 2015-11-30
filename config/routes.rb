Rails.application.routes.draw do
  
  devise_for :users
  resources :todo_lists do
    resources :todo_items do
        member do
            patch :complete
        end
    end
  end

  devise_scope :user do
    root :to => 'devise/sessions#new'
  end
end
