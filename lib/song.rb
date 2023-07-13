class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@genres = []
    @@artists = []
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << genre
        @@artists << artist
    end

    def self.count 
        @@count
    end

    def self.genres
        @@genres.uniq
    end
    
    def self.artists
        @@artists.uniq
    end

    def self.genre_count
        obj = {}
        @@genres.each do |genre|
            if obj[genre]
                obj[genre] += 1
            else 
                obj[genre] = 1
            end
        end
        obj
    end

    def self.artist_count
        @@artists.tally
    end
end