require 'pry'

class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
    @filenames = []
  end

  def files
    @filenames = Dir.entries(path)
    binding.pry
    @filenames.delete_if {|name| name.end_with? "."}
    @filenames #array of filenames

  end

  def import
      @filenames.each do |filename|
        Song.new_by_filename(filename)
    end
  end

end
