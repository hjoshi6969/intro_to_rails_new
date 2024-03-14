Rails.application.routes.draw do
  root 'about#index'

  get '/products/index', to:'product#index'
  get '/products/show', to:'product#show'
  get '/catogory/index', to:'category#index'
  get '/catogory/list', to:'category#list'
  get '/catogory/show', to:'category#show'
end
