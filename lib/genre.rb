class Genre 
  @@all = []
  
  def initialize(name)
    @name = name
  end
  
  def self.all
    @@all
  end
  
  def songs 
    Song.all.select do |song|
      song.genre == self
    end
  end
  
  def artists 
    songs.artist
  end

end