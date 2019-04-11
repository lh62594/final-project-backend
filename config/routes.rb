Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, :equities, :dashboards, :equity_dashboards, :portfolios, :subportfolios

      # route to login
      post "/login", to: "auth#login"

      # login on refresh
      get '/auto_login', to: "auth#auto_login"

    end
  end
end
