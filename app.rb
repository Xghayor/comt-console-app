require_relative 'item'
require_relative 'music_album'
require_relative 'genre'
require_relative 'book'
require_relative 'label'
require_relative 'storage/author_method'
require_relative 'storage/games_method'
require_relative 'storage/book_method'
require_relative 'storage/genre_method'
require_relative 'storage/label_method'
require_relative 'storage/music_album_method'

class App
  include AuthorsDataController
  include GamesDataController
  include BooksDataController
  include MusicAlbumDataController
  include GenreDataController
  include LabelsDataController

  def initialize
    @music_albums = load_music_albums
    @games = load_games
    @genres = load_genres
    @books = load_books
    @authors = load_authors
    @labels = load_labels
  end

  # rubocop:disable Metrics/CyclomaticComplexity
  def option_selector(user_input)
    case user_input
    when '1' then list_books
    when '2' then list_music_albums
    when '3' then list_games
    when '4' then list_genres
    when '5' then list_labels
    when '6' then list_all_authors
    when '7' then add_book
    when '8' then add_music_album
    when '9' then add_game
    end
  end
  # rubocop:enable Metrics/CyclomaticComplexity

  def list_music_albums
    puts 'Music Albums'
    @music_albums.each do |a|
      puts "Name: #{a.name}, Publish Date: #{a.published_date}, On Spotify: #{a.on_spotify}"
    end
  end

  def list_genres
    puts 'Genres:'
    @genres.each do |genre|
      puts "Genre Name: #{genre.name}"
    end
  end

  def list_all_authors
    puts 'Authors:'
    @authors.each do |author|
      puts "First Name: #{author.first_name}, Last Name: #{author.last_name}"
    end
  end

  def add_music_album
    puts 'Album Name: '
    name = gets.chomp

    puts 'Date of publish [Enter date in format (yyyy-mm-dd)]'
    published_date = gets.chomp

    puts 'Is it available on Spotify? Y/N'
    on_spotify = gets.chomp.downcase == 'y'

    @music_albums << MusicAlbum.new(name, published_date, on_spotify)
    puts 'Album created'
  end

  def add_book
    print 'Please, enter the book title: '
    title = gets.chomp

    print 'Please, enter the book publisher: '
    publisher = gets.chomp

    print 'Please, enter the book cover state: '
    cover_state = gets.chomp

    print 'Published Date [Enter date in format (yyyy-mm-dd)]: '
    published_date = gets.chomp
    return unless published_date

    @books << Book.new(title, publisher, cover_state, published_date)
    puts 'Book created successfully'
  end

  def add_game
    puts 'Please write multiplayer: '
    multiplayer = gets.chomp

    puts 'Please write date of publish [Enter date in format (yyyy-mm-dd)]'
    published_date = gets.chomp

    puts 'Please write last played date [Enter date in format (yyyy-mm-dd)]'
    last_played_date = gets.chomp

    @games << Game.new(multiplayer, published_date, last_played_date)
    puts 'Game is created'
  end

  def list_books
    puts 'Books:'
    if @books.empty?
      puts 'There are no books yet! Please add books.'
    else
      @books.each do |book|
        puts "Name: #{book.name}, Publish Date: #{book.published_date}, Cover State: #{book.cover_state}"
      end
    end
  end

  def list_games
    puts 'Games:'
    if @games.empty?
      puts 'There are no games yet! Please add games.'
    else
      @games.each do |g|
        puts "Player: #{g.multiplayer}, Date: #{g.published_date}, Last Played Date: #{g.last_played_date}"
      end
    end
  end

  def list_labels
    puts 'Labels:'
    if @labels.empty?
      puts 'There are no labels yet!'
    else
      @labels.each do |label|
        puts "ID: #{label['id']}, Title: #{label['title']}, Color: #{label['color']}"
      end
    end
  end
end
