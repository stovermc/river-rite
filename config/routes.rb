Rails.application.routes.draw do

  # resources :states, only: [ :index ]
#     resources :rivers, only: [ :index, :show ]
#   end
#
  namespace :admin do
    resources :states
#     resources :rivers
  end
end
