
require 'pry'
class Genre 

  @@all = []

  attr_accessor :name, :song, :artist

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all 
    @@all
  end

  def songs
    Song.all do |song|
      song.name == self
    end
    #binding.pry
  end

  def artists
    songs.map { |song| song.artist }
  end

end