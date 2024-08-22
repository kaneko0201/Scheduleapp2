Rails.application.routes.draw do
  get 'schedules/index'
  get 'schedule/hello', to: 'schedule#hello'
  resources :schedules
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
