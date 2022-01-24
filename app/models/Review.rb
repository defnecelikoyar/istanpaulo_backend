class Review < ActiveRecord::Base
    belongs_to :artwork
    belongs_to :lover

    def review
        puts "#{lover.name} says: #{review}"
    end
end 