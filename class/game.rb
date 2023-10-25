require 'securerandom'
require_relative 'item'
class Game < Item
  attr_accessor :multiplayer, :last_played_at

  def initialize(_id, multiplayer, last_played_at, publish_date)
    super(publish_date)
    @id = SecureRandom.uuid
    @multiplayer = multiplayer,
                   @last_played_at = last_played_at
  end

  def can_be_archived?
    super && (Time.now - @last_played_at) > 2 * 365 * 24 * 60 * 60
  end
end
