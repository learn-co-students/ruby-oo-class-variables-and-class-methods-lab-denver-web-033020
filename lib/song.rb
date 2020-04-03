class Song

    attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1

        @@genres << genre
        @@artists << artist

        if !@@artistWithSongs[artist]
            @@artistWithSongs[artist] = [name]
        else
            @@artistWithSongs[artist] << name
        end

    end

    @@count = 0
    @@artists = []
    @@genres = []
    @@genre_count = {}
    @@artist_count = {}
    @@artistWithSongs = {}

    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end

    def self.genre_count
        @@genres.each do |genreType|
            if !@@genre_count[genreType]
                @@genre_count[genreType] = 1
            else
                @@genre_count[genreType] += 1
            end
        end
        @@genre_count
    end

    def self.artist_count

        @@artistWithSongs.each do |artist, array|
            @@artist_count[artist] = array.uniq.length
        end

        @@artist_count
    end

    def self.artistWithSongs
        @@artistWithSongs
    end

end