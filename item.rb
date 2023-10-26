require 'date'
class Item
  attr_reader :genre, :label, :author
  attr_accessor :published_date, :archived, :id, :name

  def initialize(id, name, published_date, archived = false)
    @id = id || Random.rand(1..100)
    @name = name
    @published_date = Date.parse(published_date)
    @archived = archived
  end

  def move_to_archive
    @archived = can_be_archived?
    @archived
  end

  def genre=(genre)
    @genre = genre
    genre.add_item(self) unless genre.items.include?(self)
  end

  def label=(label)
    @label = label
    label.add_item(self)
  end

  def author=(author)
    @author = author
    author.add_item(self)
  end

  private

  def can_be_archived?
    Date.today.year - @published_date.year >= 10
  end
end
