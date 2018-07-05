Rails.application.routes.draw do
  resources :product_prices
  get "/csv" => "product_prices#CSV"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
