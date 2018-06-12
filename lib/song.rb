class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end
  
  def self.create 
    self.class.new 
  end
  
  def self.create(name) 
    song = self.class.new(name, artist_name)
    @name = name
    @artist_name = artist_name
    self.save
    song
  end

  def save
    self.class.all << self
  end

end
