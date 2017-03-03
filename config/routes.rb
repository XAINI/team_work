Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :test

  resources :tasks do
    collection do
      get :build_task
      get :distribution
    end
  end

end
