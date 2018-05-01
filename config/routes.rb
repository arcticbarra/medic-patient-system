Rails.application.routes.draw do
  namespace :admin do
    resources :areas
    resources :doctors
    resources :patients
    resources :people
    resources :treatments

    root to: "areas#index"
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
