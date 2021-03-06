Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  namespace :api do
    namespace :v1 do
      get "/jamaicans", to: "jamaicans#index"
      get "/jamaicans/:id", to: "jamaicans#show"
      post "/jamaicans", to: "jamaicans#create"
      patch "/jamaicans/:id", to: "jamaicans#update"
      delete "/jamaicans/:id", to: "jamaicans#destroy"
    end

    namespace :v2 do
      get "/jamaicans", to: "jamaicans#index"
      get "/jamaicans/:id", to: "jamaicans#show"
      post "/jamaicans", to: "jamaicans#create"
      patch "/jamaicans/:id", to: "jamaicans#update"
      delete "/jamaicans/:id", to: "jamaicans#destroy"
    end
  end

  get "/", to: "pages#home"
  post "/", to: "pages#create"

end
