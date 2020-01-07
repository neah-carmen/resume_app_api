Rails.application.routes.draw do
  namespace :api do
    get "/users" => "users#index"
    post "/users/" => "users#create"
    get "/users/:id" => "users#show"
    get "/users/new" => "users#new"
    patch "/users/:id" => "users#update"
    delete "/users/:id" => "users#destroy"

    get "/educations" => "educations#index"
    post "/educations/" => "educations#create"
    get "/educations/:id" => "educations#show"
    get "/educations/new" => "educations#new"
    patch "/educations/:id" => "educations#update"
    delete "/educations/:id" => "educations#destroy"
  end
end
