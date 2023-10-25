require './book'
require './label'
require './item'
require './genre'
require './music_album'


class App
  attr_accessor :all_books, :all_albums, :all_games, :all_genres, :all_labels, :all_authors, :all_sources

  def initialize
    @all_books = []
    @all_albums = []
    @all_games = []
    @all_genres = []
    @all_labels = []
    @all_authors = []
  end

  def add_book(book)
    if book.is_a?(Book)
      @all_books << book
    else
      puts "Invalid input. Expected a Book object."
    end
  end

  def add_music_album(album)
    if album.is_a?(MusicAlbum)
      @all_albums << album
    else
      puts "Invalid input. Expected a MusicAlbum object."
    end
  end

  def add_game(game)
    if game.is_a?(Game)
      @all_games << game
    else
      puts "Invalid input. Expected a Game object."
    end
  end

  def add_genre(genre)
    if genre.is_a?(Genre)
      @all_genres << genre
    else
      puts "Invalid input. Expected a Genre object."
    end
  end

  def add_label(label)
    if label.is_a?(Label)
      @all_labels << label
    else
      puts "Invalid input. Expected a Label object."
    end
  end

  def add_author(author)
    if author.is_a?(Author)
      @all_authors << author
    else
      puts "Invalid input. Expected an Author object."
    end
  end
end

