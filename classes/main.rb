require './app'

class Main
    def display_menu
      puts "Menu:"
      puts "1. List all books"
      puts "2. List all music albums"
      puts "3. List of games"
      puts "4. List all genres"
      puts "5. List all labels"
      puts "6. List all authors"
      puts "7. List all sources"
      puts "8. Add a book"
      puts "9. Add a music album"
      puts "10. Add a game"
      puts "11. Exit"
    end
    
    def run
      loop do
        app = App.new
        display_menu
        print "Please enter your choice: "
        
        choice = gets.chomp.to_i
    
        case choice
        when 1 then app.all_books.each do |book|
            puts "Label: #{book.label}"
          end
        when 2 then app.all_albums.each do |album|
            puts "Genre: #{album.genre}"
          end
        when 3 then app.all_games.each do |games|
            puts "game: #{games.}"
          end
        when 4 then app.all_genres.each do |genres|
            puts "Genre: #{genres.genre}"
          end
        when 5
          puts "Listing all genres..."
          # Implement logic to list all genres here
        when 6
          puts "Listing all labels..."
          # Implement logic to list all labels here
        when 7
          puts "Listing all authors..."
          # Implement logic to list all authors here
        when 8
          puts "Listing all sources..."
          # Implement logic to list all sources here
        when 9
          puts "Adding a book..."
          # Implement logic to add a book here
        when 10
          puts "Adding a music album..."
          # Implement logic to add a music album here
        when 11
          puts "Adding a movie..."
          # Implement logic to add a movie here
        when 12
          puts "Adding a game..."
          # Implement logic to add a game here
        when 13
          puts "Exiting..."
          break
        else
          puts "Invalid choice. Please select a valid option."
        end
      end
    end
  end
  

  main = Main.new
  main.run
  