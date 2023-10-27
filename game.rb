require 'date'
require_relative 'item'

class Game < Item
  attr_accessor :last_played_date, :multiplayer, :published_date

  def initialize(multiplayer, last_played_date, published_date)
    super(id, name, published_date)
    @last_played_date = Date.parse(last_played_date)
    @multiplayer = multiplayer
  end

  def can_be_archived?
    duration = Time.now.year - @last_played_date.year
    super && duration > 2
  end
end
