require_relative 'app'

class Main
  def initialize
    @app = App.new
  end

  def start
    input = '0'
    while input != '7'
      puts 'Please select 1 option below
        1 - List all books
        2 - List all music albums
        3 - List all genres (e.g "Comedy", "Thriller")
        4 - List all labels (e.g "Gift", "New")
        5 - Add a book
        6 - Add music album
        7 - Exit  '
      input = gets.chomp
      @app.option_selector(input)
    end
    @app.save_books
    puts 'Exiting'
  end
  
end

main = Main.new
main.start
