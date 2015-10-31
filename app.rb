require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    player_one = Player.new( params[:name1] )
    player_two = Player.new( params[:name2] )
    $game = Game.new(player_one, player_two)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  get '/attack' do
    @game = $game
    @game.attack @game.other_player
    erb :attack

  end

  get '/switch_player' do
    @game = $game
    @game.switch_player
    erb :play
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
