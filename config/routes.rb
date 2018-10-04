Rails.application.routes.draw do
  resources :student_days
  resources :students
  resources :cohort_days
  resources :days
  resources :cohorts
  resources :campus_users
  resources :campuses
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
