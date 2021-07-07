class Destination < ApplicationRecord
    has_many :posts
    has_many :bloggers, through: :posts


    def most_recent_posts(num)
        self.posts.last(num)
    end

    def avg_age
        unique_ages = self.bloggers.map { |blogger| blogger.age}.uniq

        (unique_ages.sum.to_f / unique_ages.count).round(2)
    end   
    
    def featured
        self.posts.max_by { |post| post.likes }
    end

end
