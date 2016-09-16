Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api, constraints: { format: 'json' } do
    namespace :v1 do
      resources :products, only: %i(create index) do
        member do
          put :merchandiser_update
          put :admin_update
        end
      end
    end
  end
end
