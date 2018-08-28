class MP3Importer
  attr_accessor :path, :file_array
  def initialize(path)
    @path=path
  end 
  
  def files
    @file_array=Dir.entries(self.path)
  end 
    
  def import
    @file_array.each{|f| 
      
      Song.new_by_filename(f)}
  end 
    
end
    