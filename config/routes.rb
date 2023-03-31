Rails.application.routes.draw do
  resources :classrooms
  resources :course_teacher_school_infos
  resources :teacher_school_infos
  resources :calendars
  resources :courses
  resources :teachers
  resources :grades
  resources :schools
  resources :localities
  resources :responsibles
  resources :students
  resources :exercises
  resources :teacher_infos
  mount RailsAdmin::Engine => '/', as: 'rails_admin'
  # mount RailsAdmin::Engine => '/', as: 'rails_admin'
end
