Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do

get "/users" => "users#index"
get "/users/me" => "users#me"
get "/users/:id" => "users#show"
get "/users/new" => "users#new"
post "/users/" => "users#create"
patch "/users/" => "users#update"
delete "/users/:id" => "users#destroy"

get "/educations" => "educations#index"
get "/educations/:id" => "educations#show"
get "/educations/new" => "educations#new"
post "/educations/" => "educations#create"
patch "/educations/" => "educations#update"
delete "/educations/:id" => "educations#destroy"

end
end
