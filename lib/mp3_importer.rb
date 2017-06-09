require 'pry' #me a river
class MP3Importer

  attr_reader :path

  def initialize(file_path)
    @path = file_path
    @files = []
    file_list = Dir.entries(file_path)
    2.times do
      file_list.shift
    end
    file_list.each do |file_name|
      @files << file_name
    end

  end

  def files
    @files
  end

  def import
    self.files.each do |file_name|
      Song.new_by_filename(file_name)
    end
  end

end # of class
