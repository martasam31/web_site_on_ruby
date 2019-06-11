# require 'ActionController'
Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "homepage/main" # підключити index-файл
  get "rozklad/rozklad" # підключити index-файл
  get "zali/zali" # підключити index-файл

  root 'homepage#main' # використати підключений файл як основний
  match '/rozklad', :to => 'rozklad#rozklad', :via => [:get, :post]
  match '/zali', :to => 'zali#zali', :via => [:get, :post]
  # match  "/rozklad" => "rozklad#rozklad"
  # match  "/zali" => "zali#zali"
  
  # error pages
  # %w( 404 422 500 503 ).each do |code|
  #   raise ActionController::RoutingError.new('Not Found')
  # end
end
