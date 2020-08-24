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
  song_data = []
  song_data << filename.split("-")
  artist = song_data[0]
  title = song_data[1]
  genere = song_data[2]
  Song.new(title)


end


end
