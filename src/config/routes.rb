Rails.application.routes.draw do
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'home_pages#home'
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: "users/sessions",
  }
  resources :events
  post '/home_pages/guest_sign_in', to: 'home_pages#guest_sign_in'
end
