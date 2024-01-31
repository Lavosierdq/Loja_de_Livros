Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  #get "up" => "rails/health#show", as: :rails_health_check

  # Rotas definidas para o model Autor
  get "loja_livro/new", to:"loja_livro#new", as: :new_create
  post "loja_livro",    to:"loja_livro#create", as: :create_autor
  # Rotas definidas para o model Livro
  get "livro/cadastro", to:"livro#livro_cadastro"
  # Defines the root path route ("/")
  root "loja_livro#index"
end
