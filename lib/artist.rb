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


  def self.find_or_create_by_name (name)
    if self.all.detect {|temp| temp.name == name}
      self
    else
      artist = self.new(name)
      artist
    end
  end


  def print_songs
  end





end
