class Song
    @@count = 0
    @@artists = []
    @@genres = []
    @@genres_counts = Hash.new(0)
    @@artist_counts = Hash.new(0)
    attr_accessor :name, :artist, :genre
   
    def initialize(name, artist, genre)
      @name = name
      @artist = artist
      @genre = genre
      
      @@count += 1
      @@artists << self.artist
      @@genres << self.genre
    end
   
    def self.count
      @@count
    end
    def self.artist_count
        @@artists.each { |artist|  @@artist_counts[artist] += 1 }
        @@artist_counts
    end
    def self.genre_count
        @@genres.each { |genre|  @@genres_counts[genre] += 1 }
        @@genres_counts
    end
    def self.artists
        @@artists.uniq
    end
    def self.genres
        @@genres.uniq
    end
  end