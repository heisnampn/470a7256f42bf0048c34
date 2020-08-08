Rails.application.routes.draw do  
  root  'tv_shows#index'
  resources :tv_shows 
end
