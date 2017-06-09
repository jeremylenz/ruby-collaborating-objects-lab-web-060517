require 'pry'
class Song

attr_accessor :name, :genre
attr_reader :artist

def initialize(name)
  @name = name
end

def artist=(artist)
  @artist = artist
end

def self.new_by_filename(file_name)
  file_name_chunks = file_name.split(" - ")
  #[0] is artist, [1] is title, [2] is genre
  # binding.pry
  new_song = self.new(file_name_chunks[1])
  new_song.artist = Artist.find_or_create_by_name(file_name_chunks[0])
  new_song.genre = file_name_chunks[2].chomp(".mp3")
   #bonus!
  new_song.artist.add_song(new_song)
# binding.pry
  new_song
end

end # of Song class
