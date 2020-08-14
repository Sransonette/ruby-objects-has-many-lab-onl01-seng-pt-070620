require 'pry'

class Artist 
  
  @@all = []
  
  attr_accessor :name
  
  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end
  
  
  def add_song(song)
    song.artist = self
  end
  
  def add_song_by_name(song)
    song = Song.new(song)
    add_song(song)
  end 
  
  def songs 
    Song.all.select {|song| song.artist == self}
  end
  
  def self.song_count
    Song.all.length do |count|
    end
  end
  
  def self.all
    @@all
  end

end


