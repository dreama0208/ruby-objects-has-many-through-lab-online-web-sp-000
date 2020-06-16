class Genre

  attr_accessor :name

  @@all = []

  def songs
    Song.all.select {|song| song.genre == self}
  end

  def self.all
    @@all
  end

end
