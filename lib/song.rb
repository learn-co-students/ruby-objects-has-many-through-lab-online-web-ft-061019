class Song

    attr_accessor :name, :artist, :genre

    @@all = []

    def initialize (name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
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

    def artists
        songs.map(&:artist)
    end

    def add_song(song)
        songs << song
    end



end