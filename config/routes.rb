Rails.application.routes.draw do

  devise_for :users, controllers: {
      registrations: 'users/registrations',
      sessions: 'users/sessions',
      passwords: 'users/passwords'
  }

  scope '/:locale' do
    resources :users
  end

  resources :manages
  resources :roles


  root 'welcome#index'

end
