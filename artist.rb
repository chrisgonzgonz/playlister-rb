class Artist
  attr_accessor :name, :songs, :genres
  ARTISTS = []

  def initialize
    ARTISTS << self
    @songs = []
    @genres = []
  end

  def self.reset_artists
    ARTISTS.clear
  end

  def self.count
    ARTISTS.length
  end

  def self.all
    ARTISTS
  end

  def songs_count
    @songs.length
  end

  def add_song(song)
    @songs << song
    @genres << song.genre

  end
  
  def genres
    @genres
  end

end
