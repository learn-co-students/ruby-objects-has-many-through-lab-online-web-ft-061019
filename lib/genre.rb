class Genre
   attr_accessor :name

   @@all = []

   def initialize(genre_name)
      self.name = genre_name
      self.class.all << self
   end

   def self.all
      @@all
   end

   def songs
      Song.all.select {|song| song.genre == self}
   end

   def artists
      songs.map {|song| song.artist}
   end

end