Rails.application.routes.draw do
get "/teams", to: 'teams#index'
post "/teams/new", to: 'teams#create'
get "/teams/:id", to: 'teams#show'
patch "/teams/:id", to: 'teams#update'
delete "/teams/:id", to: 'teams#destroy'

namespace :api do 

  namespace :v1 do 

    get "/teams", to: 'teams#index'
    post "/teams/new", to: 'teams#create'
    get "/teams/:id", to: 'teams#show'
    patch "/teams/:id", to: 'teams#update'
    delete "/teams/:id", to: 'teams#destroy'
  end 
end
end 