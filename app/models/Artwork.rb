class Artwork < ActiveRecord::Base
    has_many :reviews,
    has_many :lovers, through: :reviews

    def leave_review(author, review)
        Review.create(author: author, review: review)
    end

    def all_reviews
        reviews.map {|r| r.review}
    end
end 