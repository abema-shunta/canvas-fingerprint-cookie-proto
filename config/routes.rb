Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/tracking/uid', to: 'tracking#uid', as: 'tracking_image'
  get '/tracking', to: 'tracking#index', as: 'tracking'

end
