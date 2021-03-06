Rails.application.routes.draw do
  resources :grades
  resources :assignments
  resources :enrollments
  resources :courses do
    get 'students', to: 'courses#students' #rerouting
    get 'assignments', to: 'courses#assignments'
  end
  resources :people

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
