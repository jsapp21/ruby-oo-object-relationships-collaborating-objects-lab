require 'pry'

class Artist
    
    attr_accessor :name 
    
    @@all = []

    def initialize(name)
        @name = name
        @@all << self 
    end

    def self.all
        @@all 
    end

    def songs
        Song.all.select do |song|
            song.artist 
        end 
    end

    #still working on
    def add_song(song) 
        song.artist = self 
    end 

    #this needs to be used in artist_name=
    #still working on
    def self.find_or_create_by_name(name)
        self.name == self
        name = self.new(name)
    end 
    
    #still working on 
    def print_songs
        songs.each do |song|
            puts song.name
        end 
    end 

end