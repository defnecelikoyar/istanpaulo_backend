class Review < ActiveRecord::Base
    belongs_to :artwork
    belongs_to :lover

    # working :)
    def print_review
        puts "#{self.lover.name} says: #{review}"
    end
end 