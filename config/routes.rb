DashboardRails::Application.routes.draw do
  root to: "welcome#index"

  resources "todo"

  namespace :time_tracker do
    root to: :index
    get :index
  end
end
