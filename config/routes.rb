Rails.application.routes.draw do
  root "announcements#index"
  resources :announcements
end
