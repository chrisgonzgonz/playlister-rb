class Song
  attr_accessor :genre, :name, :artist
  SONGS = []

  def initialize
    SONGS << self
  end

  def self.all
    SONGS
  end

  def self.reset_songs
    SONGS.clear
  end

end