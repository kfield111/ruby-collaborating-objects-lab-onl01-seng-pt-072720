class MP3Importer
  attr_accessor :filepath


  def initialize (path)
    @path = path
  end

  def files (path)
    data = path.chomp(".mp3").split(" - ")
  end





end
