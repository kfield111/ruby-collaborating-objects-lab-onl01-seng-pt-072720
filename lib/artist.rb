require 'pry'

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
    @@all_artists
  end


  def add_song (song)
    song.artist = self
  end


  def songs
    Song.all.select {|temp| temp.artist == self}
  end


  def self.find_or_create_by_name (name)
    @@all_artists.name.detect do {|temp| temp.name}
  end





end
