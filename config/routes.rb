Rails.application.routes.draw do

  devise_for :users, controllers: {
      registrations: 'users/registrations'
  }

  scope '/:locale' do
    resources :users
  end

  devise_scope :user do
    authenticated :user do
      root 'welcome#index', as: :authenticated_root
    end
    root :to => 'devise/sessions#new'
  end

end
