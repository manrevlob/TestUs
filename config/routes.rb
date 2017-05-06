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
  resources :suites

  # match 'assigns/:id/assignProject' => 'assigns#assignProject', via: [:get, :patch, :put], as: :assigns_assignProject
  # match 'assigns/:id/unAssignProject' => 'assigns#unAssignProject', via: [:get, :patch, :put], as: :assigns_unAssignProject

  post '/set_current_project', to: 'application#set_current_project', as: :set_current_project

  root 'welcome#index'

end
