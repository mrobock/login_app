Rails.application.routes.draw do
  get '/register_users/index'

  post '/register_users/register'
  get '/register_users/register'

  get '/users/update_profile'

  get '/users/address_book'

  get '/welcome/index'

  get '/welcome/login'

  get '/welcome/register'

  get '/users/index'

  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
