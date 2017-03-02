Rails.application.routes.draw do

namespace :api do 

  namespace :v1 do 

    get "/teams", to: 'teams#index'
    get "/teams/:id", to: 'teams#show'
    post "/team", to: 'teams#create'
    patch "/teams/:id", to: 'teams#update'
    delete "/teams/:id", to: 'teams#destroy'
  end 
end

get "/teams", to: 'teams#index'
end 