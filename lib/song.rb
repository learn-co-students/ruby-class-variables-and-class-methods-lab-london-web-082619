class Song
  attr_accessor :name , :artist , :genre
  
  @@count= 0
  @@genres = []
  
  def intialize(name, artist, genre)
    @name = name  
    @artist = artist 
    @genre = genre
    
    @@count =+ 1

  
  def genres 
    
 end
  
end 