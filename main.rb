require_relative 'app'

class Main
  def initialize
    @app = App.new
  end

  def start
    input = 0
    while input.to_i < 10
      puts 'Please select 1 option below
        1 - List all books
        2 - List all music albums
        3 - List all games
        4 - List all genres (e.g "Comedy", "Thriller")
        5 - List all labels (e.g "Gift", "New")
        6 - List all authors (e.g "Stephan King")
        7 - Add a book
        8 - Add music album
        9 - Add a game
        10 - Exit  '
      input = gets.chomp
      @app.option_selector(input)
    end
    @app.create_games
    @app.create_music_album
    @app.save_books
    puts 'Exiting App'
  end
end

main = Main.new
main.start
