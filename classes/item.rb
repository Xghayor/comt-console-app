require 'date'

class Item
  attr_accessor :title, :publish_date
  attr_reader :id, :archived, :archived_items, :genre, :author, :source, :label

  def initialize(publish_date, title = nil)
    @id = rand(1..1000)
    @publish_date = publish_date
    @title = title
    @archived = false
    @archived_items = []
    @genre = []
    @author = []
    @source = []
    @label = []
  end

  def add_genre(genre)
    @genre << genre
  end

  def add_author(author)
    @author << author
  end

  def add_source(source)
    @source << source
  end

  def add_label(label)
    @label << label
  end

  def can_be_archived?
    ten_years_ago = Date.today - (10 * 365)
    @publish_date < ten_years_ago
  end

  def move_to_archive
    return unless can_be_archived?

    @archived = true
    @archived_items << self
  end
end
