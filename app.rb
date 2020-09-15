require 'sinatra'
require_relative './lib/player.rb'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player_one = Player.new(params[:player_one])
    $player_two = Player.new(params[:player_two])
    redirect '/player'
  end

  get '/player' do
    @player_one_hp = 100
    @player_two_hp = 100
    erb(:player)
  end

  get '/attack' do
    erb(:attack)
  end

  run! if app_file == $0   

end