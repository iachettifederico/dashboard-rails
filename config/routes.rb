DashboardRails::Application.routes.draw do
  root to: "welcome#index"

  resources "todo"

  namespace :time_tracker do
    root to: :index
    get :index
  end

  namespace :guides do
    root to: :index
    get :ruby_ubuntu
  end
end
