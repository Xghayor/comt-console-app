require 'rspec'
require_relative '../classes/music_album'

RSpec.describe MusicAlbum do
  describe '#can_be_archived?' do
    it 'returns true when the album can be archived' do
      album = MusicAlbum.new(Date.new(2010, 1, 1), archived: false)
      expect(album.can_be_archived?).to be true
    end

    it 'returns false when the album is already archived' do
      album = MusicAlbum.new(Date.new(2010, 1, 1), archived: true)
      expect(album.can_be_archived?).to be false
    end
  end
end
