Rails.application.routes.draw do

  # resources :states, only: [ :index ]
#     resources :rivers, only: [ :index, :show ]
#   end
#
  namespace :admin do
    resources :states do
      resources :rivers
    end
  end

resources :users, only: [:new, :create, :show]

end
