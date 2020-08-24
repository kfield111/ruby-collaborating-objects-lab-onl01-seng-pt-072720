class MP3Importer
  attr_accessor :path


  def initialize (path)
    @path = path
  end

  def files
    filepath = path.chomp(".mp3").split(" - ")
  end





end
