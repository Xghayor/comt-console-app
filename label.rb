class Label
  attr_reader :title, :color

  def initialize(id, title, color)
    @id = id
    @title = title
    @color = color
    @items = []
    @args = [id, title, color]
  end

  def add_item(item)
    @items << item unless @items.include?(item)
    item.label = self unless item.label == self
  end
end
