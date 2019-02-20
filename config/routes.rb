Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :airplane_seating

  root :to => "airplane_seating#index"

  post 'airplane_seating/new'

  post 'airplane_seating/arrayOfarray'

end
