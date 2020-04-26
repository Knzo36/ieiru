Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      resources :geo_location
      resources :user
    end
  end
end
