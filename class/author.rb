require_relative 'item'
class Author
  attr_reader :id, :items
  attr_accessor :first_name, :last_name

  def initialize(first_name, last_name)
    @id = generate_id
    @first_name = first_name
    @last_name = last_name
    @items = []
  end

  def add_item(item)
    @items << item
    item.author = self
  end

  def generate_id
    timestamp = Time.now.to_i * 1000
    random_number = rand(10_000)
    "Aut#{timestamp}#{random_number}"
  end

  def to_json(*_args)
    {
      id: Random.rand(1..100),
      first_name: @first_name,
      last_name: @last_name,
      items: @items
    }
  end
end
