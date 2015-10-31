require 'game'

describe Game do

  subject(:game){described_class.new(player_one, player_two)}
  let(:player_one){double(:player_one, name: 'Amy', hitpoints: 100)}
  let(:player_two){double(:player_two)}

  describe '#player_one' do
    it 'receives player_one' do
      expect(game.player_one).to eq player_one
    end
  end


  describe '#player_one_name'do
    it 'gives access to player one name'do
      expect(game.player_one_name).to eq 'Amy'
    end
  end

describe '#player_one_hitpoints' do
  it 'gives player_one\'s hitpoints' do
    expect(game.player_one_hitpoints).to eq 100
  end
end

  describe '#attack' do
    it 'player to receive damage' do
      expect(player_two).to receive(:damage)
      game.attack player_two
    end
  end
end
