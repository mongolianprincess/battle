require 'game'

describe Game do

  subject(:game){described_class.new}
  let(:player){double(:player)}

  describe '#attack' do
    it 'player to receive damage' do
      expect(player).to receive(:damage)
      game.attack player
    end
  end
end
