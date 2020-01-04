Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :api do
    get 'vue/data', to: 'vue#pass_data_to_vue'

  end

  scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do

    namespace :admin do

      root 'admins#index'

    end


    root to: 'landing#index'

    # Users
    resources :users
    resources :sessions, only: [:create, :destroy]
    get 'enter', to: 'users#enter', as: 'enter'
    get 'logout', to: 'sessions#destroy', as: 'logout'

    get 'sessions/new'
    get 'sessions/create'
    get 'sessions/destroy'

  end

end
