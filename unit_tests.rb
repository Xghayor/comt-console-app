require 'json'
require 'minitest/autorun'
require_relative 'game'
require_relative 'author'

class TestGameAndAuthor < Minitest::Test
  def setup
    @game = Game.new('Sample Game', 2021)
    @author = Author.new('Stephen King')
    @item = Item.new(@game)
  end

  def test_can_be_archived
    assert_equal false, @game.can_be_archived?
    @game.last_played_at = Time.now - (2 * 365 * 24 * 60 * 60 + 1) # More than 2 years ago
    assert_equal true, @game.can_be_archived?
  end

  def test_add_item
    assert_equal 0, author.items.size
    author.add_item(@item)
    assert_equal 1, author.items.size
    assert_equal author, @item.property
  end

  def test_save_and_load_data_to_json
    games_data = [@game].to_json
    authors_data = [author].to_json

    File.write('games.json', games_data)
    File.write('authors.json', authors_data)

    loaded_games = JSON.parse(File.read('games.json'))
    loaded_authors = JSON.parse(File.read('authors.json'))

    assert_equal 1, loaded_games.size
    assert_equal 'Sample Game', loaded_games[0]['title']
    assert_equal 'Stephen King', loaded_authors[0]['name']
  end
end
