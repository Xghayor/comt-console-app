class App
  attr_accessor :books, :music, :games, :genres, :labels, :authors

  def initialize
    @book = []
    @music = []
    @games = []
    @genres = []
    @labels = []
    @authors = []
  end

  def actions(option)
    method = ['Book added', 'Music added', 'Game added', 'All books', 'All music albums', 'All games',
              'All genres', 'All labels', 'All authors']
    if (1..10).include?(option)
      puts method[option - 1]
    else
      puts 'Choose a number between 1 and 10'
    end
  end
end
