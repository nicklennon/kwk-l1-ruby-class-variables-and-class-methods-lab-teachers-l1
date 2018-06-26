class Song
  @@count = 0
  @@artists = []
  @@genres = []

  
  attr_accessor :name, :artist, :genre
  
  def initialize(name,artist,genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << @genre
    @@artists << @artist
  end
  
  def self.count
    @@count
  end
  
  def self.artists
    unique_artists = []
    @@artists.each do |artist|
      if !unique_artists.include? artist
        unique_artists << artist
      end
    end
    unique_artists
  end
  
  def self.genres
    unique_genres = []
    @@genres.each do |genre|
      if !unique_genres.include? genre
        unique_genres << genre
      end
    end
    unique_genres
  end
  
  def self.genre_count
    genres_count = {}
    @@genres.each do |new_genre|
      if genres_count.keys.include? new_genre
        genres_count[new_genre] += 1
      else
        genres_count[new_genre] = 1
      end
    end
    genres_count
  end
  
  def self.artist_count
    artists_count = {}
    @@artists.each do |new_artist|
      if artists_count.keys.include? new_artist
        artists_count[new_artist] += 1
      else
        artists_count[new_artist] = 1
      end
    end
    artists_count
  end
    
end
