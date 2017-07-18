Rottenpotatoes::Application.routes.draw do
  resources :movies
  # map '/' to be a redirect to '/movies'
  root :to => redirect('/movies')
  
  get 'samedirector/:title'=> 'movies#director', as: :search_samedirector
end
