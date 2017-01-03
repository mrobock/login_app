Rails.application.routes.draw do
  post '/contacts/add_contact'

  get '/register_users/index'

  post '/register_users/register'
  get '/register_users/register'

  get '/users/profile'

  get '/users/address_book'

  get '/welcome/index'

  get '/welcome/login'

  get '/welcome/register'

  get '/users/index'

  get '/logout' => 'users#logout'

  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
