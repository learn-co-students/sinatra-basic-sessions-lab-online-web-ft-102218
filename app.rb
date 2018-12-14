require_relative 'config/environment'

configure do
  enable :sessions
  set :session_secret, 'yoda'
end

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/checkout' do
    @params = params
    session[:item] = params[:item]
    erb :checkout
  end
end