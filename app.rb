require 'sinatra/base'
require_relative 'lib/player'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $player_one = Player.new( params[:name1] )
    $player_two = Player.new( params[:name2] )
    redirect '/play'
  end

  get '/play' do
    @player_one = $player_one
    @player_two = $player_two 
    erb :play
  end

  get '/attack' do
    @player_one = $player_one
    @player_two = $player_two 
    @player_one.attack @player_two
    erb :attack
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
