class Artist
  attr_accessor :name

  def initialize(name)
    @name = name
    # @backed_projects = []
  end

  def self.song_count
      Song.all.length
  end

  def add_song(song)
    song.artist = self
  end

  def add_song_by_name(song_name)
    song_name = Song.new(song_name, self)
  end

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end
end
