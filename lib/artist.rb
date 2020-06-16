class Artitst

  attr_accessor :song

  @@all = []

  def initialize
    
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    artist = self
    Song.new(name, artist, genre)
  end

  def songs
      Song.select {|song| song.artist == self}
  end
end
