require_relative 'item'

class Label
  attr_reader :id, :items
  attr_accessor :title, :color

  def initialize(title, color)
    @id = generate_id
    @title = title
    @color = color
    @items = []
  end

  def add_item(item)
    @items << item
    item.label = self
  end

  def generate_id
    timestamp = Time.now.to_i * 1000
    random_number = rand(10_000)
    "Aut#{timestamp}#{random_number}"
  end

  def to_json(*_args)
    {
      id: Random.rand(1..100),
      title: @title,
      color: @color,
      items: @items
    }
  end
end
