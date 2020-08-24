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
  song_data == filename.split(" - ")
  artist = song_data[0]
  title = song_data[1]
  genre = song_data[2]
  new_song = Song.new(title)
  new_song.artist = artist
  new_song.genre = genre
  new_song
  binding.pry
end


end
