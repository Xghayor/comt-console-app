require 'date'

class Item
  attr_accessor :publish_date
  attr_reader :id, :archived

  def initialize(publish_date)
    @id = rand(1..1000)
    @publish_date = Date.parse(publish_date)
    @archived = false
    @genre = nil
    @author = nil
    @label = nil
  end

  def add_genre(genre)
    @genre = genre
  end

  def add_author(author)
    @author = author
  end

  def add_label(label)
    @label = label
  end

  def can_be_archived?
    ten_years_ago = Date.today - (10 * 365)
    @publish_date < ten_years_ago
  end

  def move_to_archive
    return unless can_be_archived?
    @archived = true
  end
end
