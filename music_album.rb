require_relative 'item'

class MusicAlbum < Item
  attr_accessor :name, :published_date, :on_spotify

  def initialize(name, published_date, on_spotify)
    @name = name
    @published_date = published_date
    @on_spotify = on_spotify
  end

  def can_be_archived?
    super && @on_spotify == true
  end
end
