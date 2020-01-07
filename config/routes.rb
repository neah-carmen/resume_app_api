Rails.application.routes.draw do
  namespace :api do
    get "/users" => "users#index"
    get "/users/:id" => "users#show"
    get "/users/new" => "users#new"
    post "/users/:id" => "users#create"
    patch "/users/:id" => "users#update"
    delete "/users/:id" => "users#destroy"

    get "/skills" => "skills#index"
    post "/skills" => "skills#create"
    get "/skills/:id" => "skills#show"
    patch "/skills/:id" => "skills#update"
    delete "/skills/:id" => "skills#destroy"

    get "/user_skills" => "user_skills#index"
    post "/user_skills" => "user_skills#create"
    get "/user_skills/:id" => "user_skills#show"
    patch "/user_skills/:id" => "user_skills#update"
    delete "/user_skills/:id" => "user_skills#destroy"
  end
end
