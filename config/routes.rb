Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, :equities, :dashboards, :equity_dashboards
    end
  end
end
