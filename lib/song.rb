class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end
  
  def self,create(name, artist_name)

  def save
    self.class.all << self
  end

end
