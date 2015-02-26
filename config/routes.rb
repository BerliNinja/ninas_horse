Rails.application.routes.draw do

root to: 'pages#github'

get '/horse' => 'pages#horse'

get '/githubs' => 'pages#githubs'


end
