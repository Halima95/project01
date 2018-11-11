Rails.application.routes.draw do
 
  # get 'home/index'
  # get 'meetup/index'

  # get 'activities/index'
  # get 'activities/show'
   resources :cities, :places, :activities

root "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end