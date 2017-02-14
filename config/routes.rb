Rails.application.routes.draw do

  devise_for :users, controllers: {
      registrations: 'users/registrations'
  }

  devise_scope :user do
    authenticated :user do
      root 'welcome#index', as: :authenticated_root
    end
    root :to => 'devise/sessions#new'
  end



end
