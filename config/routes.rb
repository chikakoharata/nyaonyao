Rails.application.routes.draw do
  devise_for :users,
    controllers: { registrations: 'users/registrations' }

  root 'posts#index'

  resources :posts, only: %i(new create index show destroy) do
    resources :likes, only: %i(create destroy)
  end
end
