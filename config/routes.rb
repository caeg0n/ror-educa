Rails.application.routes.draw do
  resources :course_teacher_school_infos
  resources :teacher_school_infos
  resources :classrooms
  resources :courses
  resources :teachers
  resources :schools
  resources :modalities
  resources :localities
  resources :responsibles
  resources :students
  resources :exercises
  resources :teacher_infos
  mount RailsAdmin::Engine => '/', as: 'rails_admin'
  # mount RailsAdmin::Engine => '/', as: 'rails_admin'
end
