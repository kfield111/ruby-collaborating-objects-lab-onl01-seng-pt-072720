class MP3Importer
  attr_accessor :path


  def initialize (path)
    @path = path
  end

  def files (path)
    filepath = path.chomp(".mp3").split(" - ")
  end





end
