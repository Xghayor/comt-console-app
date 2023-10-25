require_relative '../classes/music_album'

RSpec.describe MusicAlbum do
  describe '#initialize' do
    it 'sets the name, publish date, on_spotify flag, and genre' do
      publish_date = Date.parse('2020-01-01')
      on_spotify = true

      album = MusicAlbum.new(publish_date, on_spotify)

      expect(album.publish_date).to eq(publish_date)
      expect(album.on_spotify).to eq(on_spotify)
    end
  end

  describe '#can_be_archived?' do
    it 'returns true if the album can be archived' do
      publish_date = Date.today.prev_year(11) 
      on_spotify = true

      album = MusicAlbum.new(publish_date, on_spotify)

      expect(album.can_be_archived?).to be true
    end

    it 'returns false if the album cannot be archived' do
      publish_date = Date.today.next_year 
      on_spotify = true

      album = MusicAlbum.new(publish_date, on_spotify)

      expect(album.can_be_archived?).to be false
    end
  end
end
