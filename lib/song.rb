class Song

    @@count = 0
    @@artists = []
    @@genres = []

    attr_accessor :name
    attr_accessor :artist
    attr_accessor :genre

    def self.artists
        return @@artists
    end

    def self.count 
        return @@count
    end

    def self.artists
        return @@artists.uniq
    end
   
    def self.genres
        return @@genres.uniq
    end

    def self.genre_count 
        genre_count = {}
        @@genres.each do |genre| 
            if genre_count[genre]
                genre_count[genre] += 1
            else
                genre_count[genre] = 1
            end
        end
        genre_count
    end

    def self.artist_count 
        artist_count = {}
        @@artists.each do |artist| 
            if artist_count[artist]
                artist_count[artist] += 1
            else
                artist_count[artist] = 1
            end
        end
        artist_count
    end

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << artist
        @@genres << genre
    end

end
