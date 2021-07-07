class Song
   attr_accessor :name, :genre, :artist

   @@all = []
   
   def initialize(name, artist=nil, genre=nil)
      self.name = name
      self.artist = artist
      self.genre = genre
      self.class.all << self
   end

   def self.all
      @@all
   end
   
end