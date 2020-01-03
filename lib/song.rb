class Song 
 attr_accessor :name,  :artist  
 
 def initialize(name)
   @name = name  
  end 
  
  # def self.new_by_filename(file)
  #   song_name = file.split(" - ")[1]
  #   artist = file.split(" - ")[0]
  #   song = self.new(song_name)
  #   song.artist_name = artist
  #   song
  # end
  
  # def artist_name=(name)
  #   self.artist = Artist.find_or_create_by_name(name)
  #   self.artist.add_song(self)
  # end 
  
  def self.new_by_filename(filename)
    artist_name, song_name, extra = filename.split(" - ")
    song = self.new(song_name)
    artist = Artist.find_or_create_by_name(artist_name)
    artist.add_song(song)
  end
  
end 