Rails.application.routes.draw do
  root to: "customers#index"
  resources :customers
  devise_for :users, controllers: { registrations: "users/registrations",
                                    sessions: "users/sessions",
                                    passwords: "users/passwords" }
  # get '/users/sign_out' => 'devise/sessions#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
