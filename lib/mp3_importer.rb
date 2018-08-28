

class MP3Importer
  attr_accessor :path 
  def initialize(path)
    @path=path
  end 
  
  def self.files
    file_array=Dir.entries(self.path)
    
  def self.import 
    
end
    