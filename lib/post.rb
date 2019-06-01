class Post
    attr_reader :title
    attr_accessor :author

    @@all = []

    def initialize(title)
        @title = title
        @author = author
        @@all << self
    end

    def self.all
        @@all
    end

    def author_name
        if self.author != nil
            @author.name
        else
            nil
        end
    end
    
end