Rails.application.routes.draw do
  mount BinnacleAr::Engine => "/binnacle_ar"

  resources :comments

  root 'comments#index'
end
