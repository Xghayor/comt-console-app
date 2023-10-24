require 'date'
require_relative 'item'

class MusicAlbum < Item
  def initialize(publish_date, archived: false)
    super(publish_date)
    @archived = archived
  end

  def can_be_archived?
    super_result = super
    !@archived && super_result
  end

  # Define the genre= method to set the genre for the album
  attr_writer :genre
end
