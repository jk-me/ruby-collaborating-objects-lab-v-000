

class MP3Importer
  attr_accessor :path, :file_array
  def initialize(path)
    @path=path
  end 
  
  def self.files
    @file_array=Dir.entries(self.path)
  end 
    
  def self.import
    @file_array.each{|f| 
      Song.new 
    
end
    