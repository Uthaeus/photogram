Rails.application.routes.draw do

  get 'profiles/show'

  devise_for :users, :controllers => { registrations: 'registrations' }

  root to: 'posts#index'
  
  resources :posts do 
    resources :comments
  end

  get ':user_name', to: 'profiles#show', as: :profile 
  get ':user_name/edit', to: 'profiles#edit', as: :edit_profile

end
