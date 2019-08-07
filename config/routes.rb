Rails.application.routes.draw do
  
  get '/app/todo' => "app#todo"
  get '/app/todo/post_form' => "app#post_form"
  post '/app/todo/post' => "app#post"
  get "/app/todo/edit" => "app#edit"
  post "/app/todo/edit/:id/update" => "app#update"
  post "/app/todo/edit/:id/destroy" => "app#destroy"
  post "/app/todo/:id/star" => "app#star"

  root "users#index"
  post "/users/create" => "users#create"
  get "/users/new" => "users#new"
  get "/users/detail/:id" => "users#detail"
  post "/users/:id/destroy" => "users#destroy"

  get "/users/login_form" => "users#login_form"
  post "/users/login" => "users#login"
  post "/users/logout" => "users#logout"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
