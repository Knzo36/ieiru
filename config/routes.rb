Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      resources :users, only: [:create, :index] do
        resources :geo_locations, only: [:create, :index]
      end
    end
  end
end
