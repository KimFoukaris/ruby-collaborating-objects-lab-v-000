require 'pry'

class Artist
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def songs
    @songs
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(artist_name)
    if @@all.find {|artist| artist.name == artist_name} == nil
      artist = self.new(artist_name)
      @@all = artist
      artist
      binding.pry
    else
      artist
    end
  end

  def print_songs
    self.songs.each do |song|
      puts song.name
    end
  end

end
