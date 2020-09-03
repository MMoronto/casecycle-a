Rails.application.routes.draw do
  get '/doctors/new', to: 'doctors#new', as: 'new_doctor'

  root "static#home"
  get '/doctors', to: 'doctors#index', as: 'doctors'
  post '/doctors', to:'doctors#create'
  get '/doctors/:id', to: 'doctors#show', as: 'doctor'
  get '/doctors/:id/edit', to: 'doctors#edit', as: 'edit_doctor'
  get '/treatments', to: 'treatments#index', as: 'treatments'
  get '/signin', to: 'session#new', as: 'signin'
  post '/session', to: 'session#create', as: 'session'
  post '/treatments', to: 'treatments#create'
  get '/treatments/new', to: 'treatments#new', as: 'new_treatment'
  get '/treatments/:id', to: 'treatments#show', as: 'treatment'
  get '/treatments/:id/edit', to: 'treatments#edit', as: 'edit_treatment'
  patch '/treatments/:id', to: 'treatments#update'
  post '/patients', to: 'patients#create', as: 'patients'
end
