Rails.application.routes.draw do
  get 'dashboard/show'

  get '/' => 'home#show'

  get '/dashboard' => 'dashboard#show'

  get '/auth/auth0/callback' => 'auth0#callback'
  get '/auth/failure' => 'auth0#failure'
end
