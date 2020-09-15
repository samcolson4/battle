require 'sinatra'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:player_one] = params[:player_one]
    session[:player_two] = params[:player_two]
    redirect '/player'
  end

  get '/player' do
    @player_one = session[:player_one]
    @player_two = session[:player_two]
    @player_one_hp = 100
    @player_two_hp = 100
    erb(:player)
  end

  get '/attack' do
    @player_one = session[:player_one]
    @player_two# = session[:player_two]
    erb(:attack)
  end
  run! if app_file == $0   

end