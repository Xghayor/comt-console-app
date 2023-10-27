require_relative 'item'

class MusicAlbum
  attr_accessor :name, :published_date, :on_spotify

  def initialize(name, published_date, on_spotify)
    @name = name
    @published_date = published_date
    @on_spotify = on_spotify
  end

  def can_be_archived?
    super and @on_spotify
  end
end
