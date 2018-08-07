require 'sinatra/base'

class App < Sinatra::Base
  # Gets Page newteam.erb w/ form: Browser URL
  # renders the form to create
  get '/newteam' do
    erb :newteam
  end

  # Posts via Form from newteam.erb: method/action
  # actually creates and then should REDIRECT to show page for team
  post '/team' do
    @team = params
    erb :team
  end

  # Gets posted data
  # get '/team' do
  #   erb :team
  # end

end
