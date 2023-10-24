require 'date'
require_relative 'item'

class MusicAlbum < Item
  def initialize(publish_date, archived: false)
    super(publish_date)
    @archived = archived
  end

  def can_be_archived?
    super_result = super
    puts "In MusicAlbum: super: #{super_result} result: #{super_result && @archived}"
    super_result && @archived
  end
end
