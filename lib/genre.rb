require 'pry'

class Genre
  attr_accessor :song
  attr_reader :songs, :name
  @@all =[]

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all { |song| song.genre == self}
  end

  def artists
    songs.map do |song|
      song.artist
    end
  end

  def add_song(song)
    songs << song
  end

end
