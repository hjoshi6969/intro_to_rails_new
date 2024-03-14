Rails.application.routes.draw do
  get 'search_result/index'
  root 'about#index'

  get '/products/index', to:'product#index'
  get '/products/show', to:'product#show'
  get '/catogory/index', to:'category#index'
  get '/catogory/list', to:'category#list'
  get '/catogory/show', to:'category#show'
  get '/products/search', to:'search_result#index'
end
