class Review < ActiveRecord::Base
    belongs_to :artwork
    belongs_to :lover

    # working :)
    def print_review
        puts "#{self.lover.name} says: #{review}"
    end

    # def self.leave_review(author, review)
    #     Review.create(author: lover.name, review: review, artwork_id: self.id)
    # end

end 