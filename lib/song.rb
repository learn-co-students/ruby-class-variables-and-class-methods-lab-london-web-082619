class Song
  #Define your `Song` class such that an individual song is initialized with a name, artist and genre.
  #There should be an `attr_accessor` for those three attributes.
    attr_accessor :name, :artist, :genre
   @@count = 0
   @@artists = []
   @@genres = []

   #Create a classe variable @@count. 
   #I used this variable to keep track of the number of new songs that are created from the song class.
   
   #Your `#initialize` method should use the
   # `@@count` variable and increment the value of that variable by `1`.
   def initialize(song_name,artist,genre)
    @name = song_name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end

#Write a class method, `.count`, that resturns the total
#number of songs created.
def self.count 
    @@count
end

def self.artists
    @@artists.uniq
end

#Create a class variablr genres that returns ans array
#of all of the genres of existings songs.
#This array should contain only unique genres no duplicates.
def self.genres
    @@genres.uniq
end

#Write a class method genre_count, that returns a hash in which
#the keys are the names os each genre. Each genre key should
#point to a value that is the number of songs that have that genre.
def self.genre_count
    genre_count = Hash.new(0)
    @@genres.each {|genre| genre_count[genre] += 1}
    genre_count
  end

  #Write a class method , artist_count, that returns
  #a histogram similar to the genre_count, but for artist
  #rather than genres.
  def self.artist_count
    artist_count = Hash.new(0)
    @@artists.each {|artist| artist_count[artist] += 1}
    artist_count
  end

 end 

