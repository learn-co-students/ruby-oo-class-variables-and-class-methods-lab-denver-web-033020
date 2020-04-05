# Writing an app where you are adding songs to it. 
    # Be able to show how many songs you have, list out artists, and genres, how many songs in each genre has, how many songs each artist has and etc. 
# Created a class called Song and initialize individual song with a name, artist, and genre.
    # Set name, artist, genre under initialize and create attr_accessor for three of those so that it is set and can be gotten. 
# Showing how many songs you have is responsibility of a class so create a class variable called @@count and set it equal to 0.
    # we want to increase the song count every time a song is created so we will specify that under intialize
        # increase @@ count by one every time a song is instantiated.
# Keeping track of an array of genres is responsiblity of a class.
    # create a class variable called @@ genres and set it equal to an empty array.
    # we want to add the genre of the song to this array every time a new song is created so include it under initialize method
    # shovel in genre of the new song into the array.
# Keeping track of an array of artists is responsiblity of a class.
    # create a class variable called @@artists and set it equal to an empty array.
    # we want to add the artist of the song to this array every time a new song is created so include it under initialize method
    # shovel in artist of the new song into the array.

class Song
    @@count =0
    @@genres =[]
    @@artists = []

attr_accessor :name, :artist, :genre

def initialize (name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count+=1
    @@genres << genre
    @@artists << artist
end 

# Create a class method called self.count and have it return value of @@count.
    #self in this case is class Song.
def self.count
    @@count
end

# Create a class method called self.genres and return the array @@genres.
    # We also want to make sure there are no duplicates so use .uniq method on this array. 

def self.genres
    @@genres.uniq   
end
# Create a class method called self.artistsnd have it return the array @@artists
    # We also want to make sure there are no duplicates so use .uniq method on this array. 
def self.artists
    @@artists.uniq
end

# We want to return a hash that has each genre as a key and number of songs that fall under that genre.
# Create a class method called self.genre_count
# Create an empty hash called genre_count
# We know that we have an array of genres. We will iterate through that array
    # if the hash contains the key of that genre, then add one to the value of that key
    # if the hash does not contain it, then add key of that genre and set the value equal to 1. 
# return genre count after it is doen iterating through the loop to get the hash with genre as a key and value as the genre count
def self.genre_count
genre_count = {}
@@genres.each do |genre|
    if genre_count[genre]
        genre_count[genre]+=1
    else
        genre_count[genre]=1
    end
end
genre_count
end

# We want to return a hash that has each artist as a key and number of songs that fall under that artist. 
# Create a class method called self.artist_count
# Create an empty hash called artist_count
# We know that we have an array of artists. We will iterate through that array
    # if the hash contains the key of that genre, then add one to the value of that key
    # if the hash does not contain it, then add key of that artust and set the value equal to 1. 
# return artist_count after it is doen iterating through the loop to get the hash with artist as a key and value as the song count of that artist. 

def self.artist_count
   artist_count = {}
@@artists.each do |artist|
    if artist_count[artist]
        artist_count[artist]+=1
    else
        artist_count[artist]=1
    end
end
artist_count
end
end
