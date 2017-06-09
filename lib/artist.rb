class Artist

  @@all = []
  attr_accessor :name
  attr_reader :songs

  def initialize(name)
    @name = name
    @songs = []
    self.save
  end

  def add_song(song)
    @songs << song
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    artist_search = self.all.detect { |artist| artist.name == name }
    if artist_search == nil
      return self.new(name)
    else
      return artist_search
    end

  end

  def print_songs
    self.songs.each do |song|
      puts song.name
    end
  end
  

end #of Artist class
