
class Song

    attr_accessor :name, :artist, :genre
    @@count = 0
    @@artists = []
    @@genres = []

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

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        genre_count_all_in_genres = {}
        @@genres.each do |elgenre|
            if genre_count_all_in_genres[elgenre]
                genre_count_all_in_genres[elgenre] += 1
            else
                genre_count_all_in_genres[elgenre] = 1
            end
        end
        genre_count_all_in_genres
    end 
    
    def self.artist_count
        artist_count_all_in_artists = {}
        @@artists.each do |elart|
            if artist_count_all_in_artists[elart]
                artist_count_all_in_artists[elart] += 1
            else
                artist_count_all_in_artists[elart] = 1
            end
        end
        artist_count_all_in_artists
    end

end 