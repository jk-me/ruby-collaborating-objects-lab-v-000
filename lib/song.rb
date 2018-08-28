class Song 
  attr_accessor :name, :artist
  def initialize(name)
    @name=name
  end 
  def self.new_by_filename(name)
    x = name.split(' - ')
    s = Song.new(x[1])
    s.artist= Artist.find_or_create_by_name(x[0])
    Artist.all << s
    s
  end
  #def artist_name=(name)
    #a=Artist.find_or_create_by_name(name)
    
  #end
end