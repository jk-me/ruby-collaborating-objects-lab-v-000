class Artist 
  attr_accessor :name, :songs
  @@all=[]
  def initialize(name)
    @name=name
    @songs=[]
    @@all << self 
  end
  def self.all 
    @@all 
  end
  def self.find_or_create_by_name(name)
    self.all.each{|a| 
      if a.name==name 
        return a 
      else 
        Artist.new(name)
      end}
  end
  def add_song(song)
    @songs << song 
  end 
  def save
    self.all << self 
  end
end 