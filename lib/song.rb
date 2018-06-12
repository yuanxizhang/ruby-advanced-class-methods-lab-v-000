class Song
  attr_accessor :name, :artist_name
  @@all = []
  
  def initialize
    

  def self.all
    @@all
  end
  
  def self.create 
    song = self.class.new 
    song.save
    song
  end
  
  def self.new_by_name(name) 
    song = self.class.new(name)
    @name = name
    @artist_name = artist_name
    self.save
    song
  end

  def save
    self.class.all << self
  end

end
