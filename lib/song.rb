require 'pry'
require_relative "artist.rb"

class Song
    attr_accessor :name, :artist
    
    @@all = []

    def initialize(name)
        @name = name
        @@all << self 
    end

    def self.all
        @@all
    end 

    def self.new_by_filename(filename)
        artist, song = filename.split(" - ")	    
        song = self.new(song)	    
        song.artist_name = artist	    
        song	    
    end

    # still working on this one
    def artist_name=(new_artist_object)
        Artist.all.find do |artist|
            #binding.pry 
            artist
        end
    end 

end
# binding.pry 