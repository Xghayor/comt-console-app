require_relative 'item'
require 'date'

class Genre
  attr_accessor :name, :items
  attr_reader :id

  def initialize(name, id = rand(1..1000))
    @id = id
    @name = name
    @items = []
  end

  def add_item(item)
    @items << item
    item.set_genre(self)
  end
end
