require 'pry'

class Artist
    attr_accessor :name


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


  def add_song (song)
    song.artist = self
  end


  def songs
    Song.all.select {|temp| temp.artist == self}
  end

  def find_by_name(name)
    self.all.detect {|temp| temp.name == name}
  end


  def self.find_or_create_by_name (name)

    else
      artist = self.new(name)
      @name = name
      artist
    end
  end


  def print_songs
  end





end
