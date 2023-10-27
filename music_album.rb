require_relative 'item'

class MusicAlbum < Item
  attr_reader :on_spotify

  def initialize(name, published_date, on_spotify)
    super(id, name, published_date)
    @name = name
    @on_spotify = on_spotify
  end

  def can_be_archived?
    super and @on_spotify == true
  end
end
