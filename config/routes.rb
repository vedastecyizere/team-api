Rails.application.routes.draw do

namespace :api do 

  namespace :v1 do 

    get "/teams", to: 'teams#index'
    get "/teams/:id", to: 'teams#show'
    post "/teams", to: 'teams#create'
    get "/teams/:id/edit", to: 'teams#edit'
    patch "/teams/:id", to: 'teams#update'
    delete "/teams/:id", to: 'teams#destroy'
  end 
end

  get "/teams", to: 'teams#index'
  post "/teams", to: 'teams#create'
  patch "/teams/:id", to: 'teams#update'
end 