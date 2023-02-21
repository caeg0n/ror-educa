Rails.application.routes.draw do
  resources :stundents
  mount RailsAdmin::Engine => '/', as: 'rails_admin'
end
