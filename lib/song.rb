class Song
  attr_accessor :name, :artist_name
  @@all = []
  
  def self.create(name = nil, artist_name = nil)
    @name = name 
    @artist_name = artist_name
    @@all << self
  end  

  def self.all
    @@all
  end
  
  def self.new_by_name(name) 
    song = self.class.create(name)
    song.name = name
    song.save
    song
  end
  
  def self.create_by_name(name) 
    song = self.class.new(name)
    @@all << song
    song
  end

  def save
    self.class.all << self
  end

end
