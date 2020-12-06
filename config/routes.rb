Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    
    post "/sessions" => "sessions#create"
    
    post "/users" => "users#create"
    get "/users/:id" => "users#show"
    patch "/users/:id" => "users#update"
    delete "/users/:id" => "users#destroy"

    get "/categories" => "categories#index"
    get "/categories/:id" => "categories#show"
    patch "/categories/:id" => "categories#update"

    get "/goals" => "goals#index"
    post "/goals" => "goals#create"
    get "/goals/:id" => "goals#show"
    patch "/goals/:id" => "goals#update"
    delete "/goals/:id" => "goals#destroy"

    get "/steps/:id" => "steps#show"
    post "/steps" => "steps#create"
    patch "/steps/:id" => "steps#update"
    delete "/steps/:id" => "steps#destroy"

    # get "/*path" => proc { [200, {}, [ActionView::Base.new.render(file: 'public/index.html')]] }

  end
end
