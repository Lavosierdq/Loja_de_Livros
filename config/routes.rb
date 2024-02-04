Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  #get "up" => "rails/health#show", as: :rails_health_check

  # Rotas definidas para o model Autor
  get "autor/new", to:"autor#new",    as: :autor_new
  post "autor",    to:"autor#create", as: :create_autor

  # Rotas definidas para o model Livro
  get "livro/cadastro", to:"livro#new", as: :livro_new
  post "livro/cadastro",    to:"livro#create", as: :create_livros
  # Defines the root path route ("/")
  root "autor#index"
end
