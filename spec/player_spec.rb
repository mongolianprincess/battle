require 'player'

describe Player do
  subject(:player_one) { described_class.new('Luke Skywalker') }
  subject(:player_two) { described_class.new('Darth Vader') }
  describe '#name' do
    it 'returns a player\'s name' do
      expect(player_one.name).to eq 'Luke Skywalker'
    end
  end

  describe '#hitpoints' do
    it 'shows a player hitpoints' do
      expect(player_one.hitpoints).to eq Player::DEFAULT_HP
    end
  end

  describe '#attack' do
    it 'player one attacks player two' do
      expect{player_one.attack player_two}.to change{player_two.hitpoints}.by(-10)
    end
  end

  describe '#damage' do
    it 'deducts hitpoints by 10' do
      expect(player_two.damage).to eq (Player::DEFAULT_HP - 10)
    end
  end
end
