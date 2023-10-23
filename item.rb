require 'date'

class Item
  attr_accessor :genre, :author, :source, :label, :publish_date

  def initialize(genre, author, source, label, publish_date)
    @id = rand(1..1000)
    @genre = genre
    @author = author
    @source = source
    @label = label
    @publish_date = publish_date
    @archived = false
    @archived_items = []
  end

  def add_genre(genre)
    @genre = genre
  end

  def add_author(author)
    @author = author
  end

  def add_source(source)
    @source = source
  end

  def can_be_archived?
    ten_years_ago = Date.today - 10 * 365
    @publish_date < ten_years_ago
  end

  def move_to_archive
    if can_be_archived?
      @archived = true
      @archived_items << self
    end
  end
end
