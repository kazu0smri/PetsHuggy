Rails.application.routes.draw do

  resources :listings

  root :to => 'pages#index'

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks",:registrations => 'registrations' }

  resources :users, only:[:show]

  resources :photos, only:[:create, :destroy]do
    collection do
      get :list
    end
  end

  get 'manage_listing/:id/basics' => 'listings#basics', as: 'manage_listings_basics'
  get 'manage_listing/:id/description' => 'listings#description', as: 'manage_listings_description'
  get 'manage_listing/:id/address' => 'listings#address', as: 'manage_listings_address'
  get 'manage_listing/:id/price' => 'listings#price', as: 'manage_listings_price'
  get 'manage_listing/:id/photos' => 'listings#photos', as: 'manage_listings_photos'
  get 'manage_listing/:id/calendar' => 'listings#calendar', as: 'manage_listings_calendar'
  get 'manage_listing/:id/bankaccount' => 'listings#bankaccount', as: 'manage_listings_bankaccount'
  get 'manage_listing/:id/publish' => 'listings#publish', as: 'manage_listings_publish'

end
