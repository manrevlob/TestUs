Rails.application.routes.draw do

  devise_for :users, controllers: {
      registrations: 'users/registrations',
      sessions: 'users/sessions',
      passwords: 'users/passwords'
  }

  # scope '/:locale' do
    resources :users
  # end

  # scope "(:locale)", locale: /en|es/ do
  #   resources :users, :manages, :projects
  # end

  resources :manages
  resources :roles
  resources :projects

  root 'welcome#index'

end
