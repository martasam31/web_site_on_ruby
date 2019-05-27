Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "homepage/main" # підключити index-файл

  root 'homepage#main' # використати підключений файл як основний
end
