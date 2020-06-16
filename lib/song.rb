class Song

  attr_accessor :genre, :artist, :name

  @@all = []

  def initialize(name, artist, genre)
    @name = name
    @aritst = artist
    @genre = genre
    @@all << self
  end

  def self.all
    @@all
  end

end
