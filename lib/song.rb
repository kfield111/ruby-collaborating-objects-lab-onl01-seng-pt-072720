class Song
    attr_accessor :name, :artist, :genre

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


def artist_name= (name)
  artist = Artist.find_or_create_by_name(name)
  artist.add_song(self)
end

def self.new_by_filename (filename)
  artist = filename.split(" - ")[0]
  name = filename.split(" - ")[1]
  genre = filename.split(" - ")[2]
  new_song = Song.new(name)
  new_song.artist = artist
  new_song.genre = genre
  new_song
end


end
