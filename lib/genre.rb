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
    Song.all.select do |song|
      song.genre == self
        
  end


end
