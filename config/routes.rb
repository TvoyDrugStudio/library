Rails.application.routes.draw do
  resources :rents
  resources :workers
  resources :users
  resources :books
  resources :buildings

  root "pages#main", as: 'home'

  get 'buildings' => 'pages#buildings', as: 'lbrs'

  get 'userinfo' => 'buildings#userinfo', as: 'userinfo'

  #get 'books' => 'pages#books', as: 'books'
  get 'bookinfo', to: 'buildings#bookinfo', as: 'bookinfo'

  get 'workerinfo' => 'buildings#workerinfo', as: 'workerinfo'

  get 'rentinfo' => 'users#rentinfo', as: 'rentinfo'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
