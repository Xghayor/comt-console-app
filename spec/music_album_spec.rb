require_relative '../music_album'
describe MusicAlbum do
  context 'when creating a new Music Album' do
    it 'return a new object who is an instance of MusicAlbum class' do
      album = MusicAlbum.new 'name', '2010-10-10', true
      expect(album).to be_an_instance_of(MusicAlbum)
    end
    it 'music should be archived' do
      album = MusicAlbum.new 'name', '2010-10-10', true
      expect(album.can_be_archived?).to be(true)
    end
  end
end