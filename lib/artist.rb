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
    @@all_artists.detect do |temp|
      if temp.name == name
        self
      else
        @@all << temp
      end
    end
  end





end
