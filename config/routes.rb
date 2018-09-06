Rails.application.routes.draw do
  resources :posts, only: %i[index show new create edit update]

  get 'posts/:id/edit', to: 'post#edit', as: :edit_post
  patch 'post/:id', to: 'post#update'
end
