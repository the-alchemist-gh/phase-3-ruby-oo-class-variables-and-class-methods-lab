require "pry"
class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@genres = []
    @@artists = []
    @@genre_count = {}
    @@artist_count = {}


    def initialize (name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre

        @@count += 1
        @@genres << genre
        @@artists << artist

        
    end

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
        # genres.find_all
        # binding.pry
        genre_hash = Hash[genres.collect {|genre, songs| [genre, self.genres]}]
        genre_hash
    end

    def self.artist_count
        artist_hash = Hash[artists.collect {|artist, songs| [artist, self.count]}]
        artist_hash
    end

    

end

    # Song.new("Lucifer", "Jay-Z", "rap")
    #   Song.new("99 Problems", "Jay-Z", "rap")
    #   Song.new("hit me baby one more time", "Brittany Spears", "pop")
# binding.pry