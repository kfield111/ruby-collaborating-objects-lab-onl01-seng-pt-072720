class Song
    attr_accessor :name, :artist

@@all = []

def initialize (name)
  @name = name
  save
end

def save
  @@all << self
end


def self.all
  @@all
end


def artist_name (name)
  artist = Artist.find_or_create_by_name(name)
  self.artist = artist
  artist.add_song(name)



end

end
