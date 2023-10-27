require_relative '../music_album'

describe MusicAlbum do
  context 'when creating a new Music Album' do
    it 'should return a new object that is an instance of MusicAlbum class' do
      album = MusicAlbum.new('name', '2010-10-10', true)
      expect(album).to be_an_instance_of(MusicAlbum)
    end

    it 'should be archived if it is on Spotify' do
      album = MusicAlbum.new('name', '2010-10-10', true)
      expect(album.can_be_archived?).to be(true)
    end

    it 'should not be archived if it is not on Spotify' do
      album = MusicAlbum.new('name', '2010-10-10', false)
      expect(album.can_be_archived?).to be(false)
    end
  end
end
