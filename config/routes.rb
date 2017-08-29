Rails.application.routes.draw do

  resources :executes
  resources :keywords
  resources :platforms

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
      resources :steps, except: [:show, :edit]
    end
  end

  resources :builds , except: :show do
    resources :plans , except: :show do
      resources :case_plan , except: :show
    end
  end

  resources :message_folders do
    resources :messages
  end

  post '/set_current_project', to: 'application#set_current_project', as: :set_current_project
  post '/save_execution', to: 'executes#save_execution', as: :save_execution
  get 'case_plan/index'
  get '/executes_history', to: 'executes#index_history', as: :index_history
  get '/executes_history/:id', to: 'executes#show_index_history', as: :show_index_history


  root 'welcome#index'

end
