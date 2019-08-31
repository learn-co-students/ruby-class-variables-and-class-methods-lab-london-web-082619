class Song
    
    
          
    attr_accessor :name, :artist, :genre
    

    @@count = 0
    @@artists = []
    @@genres = []
    
    def initialize(name, artist, genre)
    @@count += 1
    @@genres << genre
    @@artists << artist
    @name = name
    @artist = artist
    @genre = genre
    
    end
    
end
 
takeshi = Song.new("TakeshiAwesome", "Tak", "Rock")
p takeshi.name
p takeshi.artist
p takeshi.genre
