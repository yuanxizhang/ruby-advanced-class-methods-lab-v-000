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
    song.class.all << song
    song
  end
  
  def self.find_by_name(name) 
    @@all.find {|song| song.name == name }
  end
  
  def self.find_or_create_by_name(name) 
    if @@all.find {|song| song.name == name } == nil
      song = self.class.new(name)
      song.class.all << song
      song
    else
      @@all.find {|song| song.name == name }
    end
  end
  
  def self.alphabetical
    @@all.sort_by {|song| song.name}
  end
  
  def self.new_from_filename(file)
    f = file.split(".").pop
    artist = f.split("-").first 
    song_name = f.split("-").last
    song = self.class.create_by_name(song_name)
    song.name = song_name
    song.artist_name = artist 
    song
  end

  def save
    self.class.all << self
  end

end
