Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :patients
    end
  end

  get '/list', :to => redirect( 'list/index.html' )
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
