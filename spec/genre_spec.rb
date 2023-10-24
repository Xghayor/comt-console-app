require 'rspec'
require "./classes/genre"

RSpec.describe Genre do
  describe '#initialize' do
    it 'initializes a Genre object with a name and id' do
      genre = Genre.new('Rock', 1)
      expect(genre).to be_an_instance_of(Genre)
      expect(genre.name).to eq('Rock')
      expect(genre.id).to eq(1)
    end
  end

  describe '#add_item' do
    it 'adds an item to the genre' do
      genre = Genre.new('Pop')
      album = MusicAlbum.new(Date.today)
      genre.add_item(album)
      expect(genre.items).to include(album)
      expect(album.genre).to eq(genre)
    end
  end
end
