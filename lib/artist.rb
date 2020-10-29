# frozen_string_literal: true

require 'pry'
class Artist
  @@all = []

  attr_accessor :name, :song, :genre, :artist

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select { |song| song.artist == self }
    # binding.pry
  end

  def new_song(genre, name)
    Song.new(genre, self, name)
    #binding.pry
  end

  def genres 
    songs.map do |song| 
      song.genre
    end
   # binding.pry
  end
end
