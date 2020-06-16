class Genre

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
  end

  def songs
    Song.all.select {|song| song.genre == self}
  end

  def self.all
    @@all
  end

  def artists
    self.songs.collect {|song| song.genre}
  end

end
