class Song
    attr_accessor :name, :artist

@@all_songs = []

def initialize (name)
  @name = name
  save
end

def save
  @@all_songs << selfend
  


def self.all
  @@all_songs
end

end
