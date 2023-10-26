require_relative 'helper'
describe Genre do
  it '@genre should be an instance of Genre class' do
    genre = Genre.new '1', 'pop'
    expect(genre).to be_an_instance_of Genre
  end
​
  it 'genre should add a new item' do
    genre = Genre.new '1', 'pop'
    item = Item.new Random.rand(1..100), 'name', '2010-10-10'
    genre.add_item(item)
    expect(genre.items.length).to be 1
  end
end