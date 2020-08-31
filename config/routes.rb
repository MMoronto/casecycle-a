Rails.application.routes.draw do

  get '/doctors/new', to: 'doctors#new', as: 'new_doctor'
  root "static#home"
  get '/doctors', to: 'doctors#index', as: 'doctors'
    get '/treatments', to: 'treatments#index', as: 'treatments'
  post '/treatments', to: 'treatments#create'
  get '/treatments/new', to: 'treatments#new', as: 'new_treatment'
  get '/treatments/:id', to: 'treatments#show', as: 'treatment'
  get '/treatments/:id/edit', to: 'treatments#edit', as: 'edit_treatment'
  patch '/treatments/:id', to: 'treatments#update'
  post '/patients', to: 'patients#create', as: 'patients'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
