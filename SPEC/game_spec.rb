require_relative 'helper'

require 'yaml'

describe Game do
  before :each do
    @game = Game.new 'multiplayer', '2010-04-14', '2010-04-14'
  end

  it 'game should be an instance of game class' do
    expect(@game).to be_an_instance_of Game
  end

  it 'game should be archivable' do
    expect(@game.can_be_archived?).to be true
  end

  it 'last played date of game is 2010-04-14' do
    expect @last_played_at == '2010-04-14'
  end
end
