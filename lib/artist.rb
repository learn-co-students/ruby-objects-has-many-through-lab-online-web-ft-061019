class Artist

    attr_accessor :name, :songs

    @@all = []

    def initialize (name)
        @name = name
        @songs = []
        @@all << self
    end

    def new_song (song_name, genre)
       song = Song.new(song_name, self, genre)
    end

    def self.songs
        Song.all.select do |songs|
            song.artist == self
        end
    end

    def self.all
        @@all
    end
end