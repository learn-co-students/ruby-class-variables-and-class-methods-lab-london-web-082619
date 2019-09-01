class Song

    @@count = 0
    @@artists = []
    @@genres = []


    
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@artists << artist
        @@genres << genre
        @@count += 1
    end

    def name
        @name
    end

    def artist
        @artist
    end

    def genre
        @genre
    end

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq!
    end

    def self.genres
        @@genres.uniq!
    end

    def self.genre_count
        counts = Hash.new 0
        @@genres.each do |g|
            counts[g] += 1
        end
        counts
    end

    def self.artist_count
        counts2 = Hash.new 0
        @@artists.each do |g|
            counts2[g] += 1
        end
        counts2
    end

end
