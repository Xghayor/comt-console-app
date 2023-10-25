require_relative 'app'

def entries
  puts "\nPlease choose an option by entering a number:\n
1 - Add a book\n2 - Add a music album\n3 - Add a game
4 - List all books\n5 - List all music albums\n6 - List all games
7 - List all genres\n8 - List all labels\n9 - List all authors
10 - Exit"
end

def main
  app = App.new
  puts "\n===================🥳=================="
  puts "\nWelcome to Catalog of my things App!"
  puts "\n===================🥳=================="

  loop do
    entries
    print "\nOption: "
    entry = gets.chomp.to_i
    puts '__________'
    puts ''
    break puts "\nThank you for using this app" if entry == 10

    app.actions(entry)
  end
end

main
