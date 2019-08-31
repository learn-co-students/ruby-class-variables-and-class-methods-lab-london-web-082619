require "pry"
class Song
    attr_accessor :name, :artist, :genre #instance variables -define
     @@count = 0 
     @@genres = []
     @@artists = []
     def initialize(name,artist, genre)
         @name = name    
         @artist = artist
         @genre = genre
         @@count +=1
         @@genres << genre
         @@artists << artist
     end
    def self.count
        @@count
    end
    def self.artists
      @@artists.uniq
    #     key[artits]=>count
    #     #  => {"Beyonce" => 17, "Jay-Z" => 40}
    end
    def self.genres
        @@genres.uniq
    end
    def self.genre_count
        hsh = {}
        @@genres.each do |song_style|
            if hsh.include?(song_style)
             hsh[song_style] += 1
        
            #     binding.pry
            elsif 
               hsh[song_style] = 1
           
           
           end
        end
       hsh
    end
        def self.artist_count
            result = Hash.new(0)
            @@artists.collect {|key| result[key] += 1}
    result
end

end
 #binding.pry