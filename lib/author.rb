class Author
    attr_accessor :name, :posts

    @@all = []

    def initialize(name)
        @name = name
        @posts = []
        @@all << self
    end

    def self.all
        @@all
    end

    def add_post(post)
        @posts << post
        post.author = self
    end

    def add_post_by_title(title)
        new_post = Post.new(title)
        self.add_post(new_post)
    end

    def self.post_count
        total_count = 0
        self.all.each do |author|
            total_count += author.posts.count
        end
        total_count
    end
end