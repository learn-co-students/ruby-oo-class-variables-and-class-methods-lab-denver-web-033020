require 'pry'
class Song

    attr_reader :name, :artist, :genre

    @@all = []
    @@count = 0
    @@artists = []
    @@genres = []

    def initialize name, artist, genre
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@all << self
        @@artists << self.artist
        @@genres << self.genre
    end

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    
    def self.genres
        @@genres.uniq
    end
    
    def self.genre_count 
        hash_of_genres = {}
        @@genres.each do|genre| 
            if hash_of_genres[genre]
                hash_of_genres[genre] += 1
            else
                hash_of_genres[genre] = 1
            end
        end
        hash_of_genres
    end

    def self.artist_count
        hash_of_artists = {}
        @@artists.each do |song|
            if hash_of_artists[song]
                hash_of_artists[song] += 1
            else 
                hash_of_artists[song] = 1
            end
        end
        hash_of_artists
    end

end