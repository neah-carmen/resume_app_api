Rails.application.routes.draw do
  namespace :api do
    get "/users" => "users#index"
    post "/users/" => "users#create"
    get "/users/:id" => "users#show"
    get "/users/new" => "users#new"
    patch "/users/:id" => "users#update"
    delete "/users/:id" => "users#destroy"

    get "/experiences" => "experiences#index"
    post "/experiences" => "experiences#create"
    patch "/experiences/:id" => "experiences#update"
    delete "/experiences/:id" => "experiences#destroy"

    post "/sessions" => "sessions#create"

    get "/educations" => "educations#index"
    post "/educations/" => "educations#create"
    get "/educations/:id" => "educations#show"
    get "/educations/new" => "educations#new"
    patch "/educations/:id" => "educations#update"
    delete "/educations/:id" => "educations#destroy"

    get "/skills" => "skills#index"
    post "/skills" => "skills#create"
    get "/skills/:id" => "skills#show"
    patch "/skills/:id" => "skills#update"
    delete "/skills/:id" => "skills#destroy"

    get "/user_skills" => "user_skills#index"
    post "/user_skills" => "user_skills#create"
    get "/user_skills/:id" => "user_skills#show"
    patch "/user_skills/:id" => "user_skills#update"
  end
end
