Rails.application.routes.draw do

  # get 'category/index'
  get "category/:id", to: "categories#show"
  # get 'home/index'
  # get 'meetup/index'

  # get 'activities/index'
  # get 'activities/show'
  resources :cities, :places, :activities, :categories

  root "cities#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
