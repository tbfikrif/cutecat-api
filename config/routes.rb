Rails.application.routes.draw do
  namespace :api, defaults: { format: :json }, path: 'api' do
    namespace :v1 do
      resources :cats
      get :fetch_cats, to: 'cats#fetch_cats'
    end
  end
end
