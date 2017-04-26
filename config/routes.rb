Rails.application.routes.draw do

  devise_for :users, controllers: {
      registrations: 'users/registrations',
      sessions: 'users/sessions',
      passwords: 'users/passwords'
  }

  resources :users
  resources :manages
  resources :roles, except: :show
  resources :projects
  resources :assigns

  # match 'assigns/:id/assignProject' => 'assigns#assignProject', via: [:get, :patch, :put], as: :assigns_assignProject
  # match 'assigns/:id/unAssignProject' => 'assigns#unAssignProject', via: [:get, :patch, :put], as: :assigns_unAssignProject

  root 'welcome#index'

end
