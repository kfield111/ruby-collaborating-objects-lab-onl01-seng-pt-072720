class Artist
    attr_accessor :name


@@all_artists = []

  def initialize (name)
    @name = name
    save
  end


  def save
    @@all_artists << self
  end

  def self.all

  end

end
