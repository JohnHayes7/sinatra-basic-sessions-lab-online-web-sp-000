require_relative 'config/environment'

class App < Sinatra::Base
  
  configure do
    enable :sessions
    set :session_secret, "Miera"
  end
  
  
  get '/' do
    
  erb :index
  end
  
  
  post '/checkout' do
    
    session[:item] = params[:item]
    binding.pry
  erb :checkout
  end
  
end