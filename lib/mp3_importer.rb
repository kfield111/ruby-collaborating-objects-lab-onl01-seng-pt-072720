require 'pry'

class MP3Importer
  attr_accessor :path


  def initialize (path)
    @path = path
  end

  def files
    filepath = path.split("/").join
    binding.pry
  end





end
