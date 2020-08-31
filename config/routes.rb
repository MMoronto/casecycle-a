Rails.application.routes.draw do

  get '/doctors/new', to: 'doctors#new', as: 'new_doctor'
  root "static#home"
  get '/doctors', to: 'doctors#index', as: 'doctors'
    get '/cases', to: 'cases#index', as: 'cases'
  post '/cases', to: 'cases#create'
  get '/cases/new', to: 'cases#new', as: 'new_case'
  get '/cases/:id', to: 'cases#show', as: 'case'
  get '/cases/:id/edit', to: 'cases#edit', as: 'edit_case'
  patch '/cases/:id', to: 'cases#update'
  post '/patients', to: 'patients#create', as: 'patients'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
