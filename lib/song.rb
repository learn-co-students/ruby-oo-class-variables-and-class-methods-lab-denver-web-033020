class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@genres = []
    @@artists = []

    def initialize name, artist, genre 
        @name = name
        @artist = artist
        @genre = genre
        @@genres << genre
        @@artists << artist
        @@count += 1
    end

    def self.count
        @@count 
    end

    def self.artists
        @@artists.uniq
    end 

    def self.genres
    @@genres.uniq
    #returns array of all the artists of the exisiting songs // no repeats so use .uniq
    end

    def self.genre_count
        # returns hash where keys are the name of each genre and value is numbers of songs that have that genre
       genre_count = Hash.new(0)
        @@genres.each do |genre|
            genre_count[genre] += 1
        end
        genre_count
    end
        
    

    def self.artist_count
       artist_count = Hash.new(0)
       @@artists.each do |artist|
        artist_count[artist] += 1
    end
        artist_count
end

end
