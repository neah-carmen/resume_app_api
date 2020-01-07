Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
  #   get "/photos" => "photos#index"
  # end

get "/users" => "users#index"
get "/users/:id" => "users#show"
get "/users/new" => "users#new"
post "/users/:id" => "users#create"
patch "/users/:id" => "users#update"
delete "/users/:id" => "users#destroy"
end
end
