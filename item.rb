require 'date'
class Item
  attr_reader :genre, :publish_date, :label, :author
 
  def initialize(publish_date)
    @id = rand(1..1000)
    @publish_date = publish_date
    @archived = false
  end
  def move_to_archive
    @archived = can_be_archived?
  end

  def can_be_archived?
    years_since_published_date >= 10
  end

  def years_since_published_date
    Date.today.year - @publish_date.year
  end

  def author = (author)
    @author = author
    author.add_item(self)
 end
end
