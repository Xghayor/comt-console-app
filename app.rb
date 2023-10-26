
require_relative 'item'
require_relative 'music_album'
require_relative 'genre'
require_relative 'book'
require_relative 'label'
require_relative 'storage/book_method'
require_relative 'storage/genre_method'
require_relative 'storage/label_method'
require_relative 'storage/music_album_method'

class App
  include BooksDataController
  include MusicAlbumDataController
  include GenreDataController
  include LabelsDataController

  def initialize
    @music_albums = load_music_albums
    @genres = load_genres
    @books = load_books
    @labels = load_labels
  end

  def option_selector(user_input)
    case user_input
    when '1' then list_books
    when '2' then list_music_albums
    when '3' then list_genres
    when '4' then list_labels
    when '5' then add_book
    when '6' then add_music_album
    when '7'
      nil
    end
  end

  def list_music_albums
    puts 'Music Albums:'
    @music_albums.each do |music_album|
      display_music_album(music_album)
    end
  end

  def list_genres
    puts 'Genres:'
    @genres.each do |genre|
      display_genre(genre)
    end
  end

  def add_music_album
    name = get_user_input('Album Name: ')
    published_date = get_user_input('Date of publish (yyyy-mm-dd): ')
    on_spotify = get_user_input('Is it available on Spotify? (Y/N)').downcase == 'y'

    @music_albums << MusicAlbum.new(name, published_date, on_spotify)
    puts 'Music album created'
  end

  def add_book
    title = get_user_input('Please, enter the book title: ')
    publisher = get_user_input('Please, enter the book publisher: ')
    cover_state = get_user_input('Please, enter the book cover state: ')
    published_date = get_user_input('Published Date (yyyy-mm-dd): ')

    return unless published_date

    @books << Book.new(title, publisher, cover_state, published_date)
    puts 'Book created successfully'
  end

  def list_books
    puts 'Books:'
    @books.each do |book|
      display_book(book)
    end
  end

  def list_labels
    puts 'Labels:'
    @labels.each do |label|
      display_label(label)
    end
  end

  private

  def display_music_album(music_album)
    puts "Name: #{music_album.name}, Publish Date: #{music_album.published_date}, On Spotify: #{music_album.on_spotify}"
  end

  def display_genre(genre)
    puts "Genre Name: #{genre.name}"
  end

  def display_book(book)
    puts "Title: #{book.name}, Publisher: #{book.publisher}, Cover State: #{book.cover_state}, Publish Date: #{book.published_date}"
  end

  def display_label(label)
    puts "ID: #{label['id']}, Title: #{label['title']}, Color: #{label['color']}"
  end

  def get_user_input(prompt)
    print prompt
    gets.chomp
  end
end
