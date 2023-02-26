Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/', as: 'rails_admin'
  resources :teachers
  resources :schools
  resources :modalities
  resources :localities
  resources :students
  # mount RailsAdmin::Engine => '/', as: 'rails_admin'
end
