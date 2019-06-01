class Artist
    attr_accessor :name, :songs

    @@all = []

    def initialize(name)
        @name = name
        @songs = []
        @@all << self
    end

    def self.all
        @@all
    end

    def add_song(song)
        @songs << song
        song.artist = self
    end

    def add_song_by_name(name)
        new_song = Song.new(name)
        self.add_song(new_song)
    end

    def self.song_count
        total_count = 0
        self.all.each do |artist|
            total_count += artist.songs.count
        end
        total_count
    end


end
