require_relative "song.rb"

class MP3Importer

    attr_reader :path

    def initialize(path)
        @path = path
    end 

    #copy and paste from solution 
    def files
        @files ||= Dir.glob("#{path}/*.mp3").collect{ |f| f.gsub("#{path}/", "") } 
    end 

    # still not working
    def import
        file.each do |file_name|
            Song.new_by_filename(file_name)
        end 
    end 


end 