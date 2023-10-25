require_relative 'item'
class Game < Item
  attr_accessor :multiplayer, :last_played_at, :can_be_archived

  def initialize(multiplayer, last_played_at, publish_date)
    @multiplayer = multiplayer
    @last_played_at = last_played_at
    super(nil, publish_date)
  end

  def can_be_archived?
    (Time.now - @last_played_at) > 2 * 365 * 24 * 60 * 60
  end

  def to_json(*_args)
    {
      id: Random.rand(1..100),
      multiplayer: @multiplayer,
      last_played_at: @last_played_at,
      publish_date: publish_date
    }
  end
end
