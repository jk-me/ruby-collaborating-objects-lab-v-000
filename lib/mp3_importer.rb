

class MP3Importer
  attr_accessor :path 
  def initialize(path)
    @path=path
  end 
  
  def self.files
    Dir.entries(self.path)
    
  def self.import 
    
end
    