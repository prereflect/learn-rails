Rails.application.routes.draw do
  get 'pages/home' => 'high_voltage/pages#show', id: 'home'
  resources :contacts, only: [:new, :create]
  resources :visitors, only: [:new, :create]
end
