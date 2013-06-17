require_relative 'song'

class Genre
  attr_accessor :name
  GENRES = []

  def initialize
    GENRES << self
  end

  def songs
    Song.all.select { |song|
      song.genre.name == name unless song.genre.nil?
    }
  end
⁄
  def artists
    Artist.all.select{ |artist|
      artist.genres.any? {|genre| genre.name == name unless genre.nil?}
    }
  end

  def self.all
    GENRES
  end

  def self.reset_genres
    GENRES.clear
  end

end
