class Song 
    attr_reader :name, :artist :genre

    #class v
    @@count = 0
    @@artist = 0
    @@genres = 0

    def initialize (name, artist, genre)
        @name = name #instance v
        @artist = artist
        @genre = genre

        @@artists << self.artist
        @@genres << self.genre
        @@count += 1
    end

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genre_count
        genre_hash = Hash.new(0)
        @genre.each do |genre|
            genre_hash[genere] +=1
        end

        genre_hash
    end 

    def self.artist_count
        asrtist_hash = Hash.new (0)
        @@artist.each do |artist|
        end
        asrtist_hash
    end
end