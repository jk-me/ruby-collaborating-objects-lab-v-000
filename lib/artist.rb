class Artist 
  attr_accessor :name :songs
  @@artists=[]
  def initialize(name)
    @name=name
    @songs=[]
    @@artists << self 
  end 
  def self.find_or_create_by_name(name)
    @@artists.each{|a| 
      if a.name==name 
        return a 
      else 
        Artist.new(name)
      end}
  end
  def add_song(song)
    @songs << song 
  end 
end 