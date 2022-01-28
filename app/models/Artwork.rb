class Artwork < ActiveRecord::Base
    has_many :reviews
    has_many :lovers, through: :reviews

    def leave_review(author, review)
        Review.create(author: author, review: review, lover_id: author.id, artwork_id: self.id)
    end

    # def self.print_reviews
    #     review = reviews.map {|r| r.review}
    #     puts "#{review.author} says: #{review}"
    # end

    def all_reviews
        self.reviews.map do |review| 
            review.print_review
        end
    end

    # def add_artwork(title, artist, era, date, description, image_url)
    #     Artwork.create(title: title, artist: artist, era: era, date: date, description: description, image_url: image_url)
    # end

end 