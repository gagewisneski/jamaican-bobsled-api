Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/jamaicans", to: "jamaicans#index"
  get "/jamaicans/:id", to: "jamaicans#show"
end
