class Artist
  attr_accessor :name
  @@all = []
  def initialize(name)
    @songs = []
    @name = name
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def songs
    @songs
  end

  def self.all
    @@all
  end

  def genres
    self.songs.map do |song|
      song.genre
    end
  end
  
end