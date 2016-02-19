Rails.application.routes.draw do

  resources :companies, only: [:show, :index]
  
end
