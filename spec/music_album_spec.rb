require 'rspec'
require './classes/music_album'

RSpec.describe MusicAlbum do
  describe '#initialize' do
    it 'initializes a MusicAlbum object' do
      album = MusicAlbum.new(Date.today)
      expect(album).to be_an_instance_of(MusicAlbum)
    end
  end

  describe '#can_be_archived?' do
    it 'returns true when the album can be archived' do
      album = MusicAlbum.new(Date.today, archived: true)
      expect(album.can_be_archived?).to be true
    end

    it 'returns false when the album cannot be archived' do
      album = MusicAlbum.new(Date.today, archived: false)
      expect(album.can_be_archived?).to be false
    end
  end
end
