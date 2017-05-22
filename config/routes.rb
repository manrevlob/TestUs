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
  resources :suites , except: :show do
    resources :cases , except: :show do
      resources :steps, except: :show
    end
  end

  post '/set_current_project', to: 'application#set_current_project', as: :set_current_project

  root 'welcome#index'

end
