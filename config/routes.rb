Rails.application.routes.draw do
  root 'newsletter#new'
  resources :newsletter, only: [:new, :create]
end
