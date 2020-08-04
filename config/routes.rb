Rails.application.routes.draw do
  resources :transactions
  resources :portfolios
  devise_for :users
  resources :users

  get 'get_stock_quote' => 'portfolios#get_stock_quote'
  get 'get_crypto_data' => 'portfolios#get_crypto_data'

  post 'update_all_prices' => 'portfolios#update_all_prices'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'statics#home'
end
