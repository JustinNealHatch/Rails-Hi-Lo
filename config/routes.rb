Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/try/:number' => 'game#try'
  post '/try/reset' => 'game#reset'
  get '/try' => 'game#default'
  end
