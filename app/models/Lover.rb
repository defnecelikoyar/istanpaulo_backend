class Lover < ActiveRecord::Base
    has_many :reviews
    has_many :artworks, through: :reviews

    # possibly a favorites function? if we add a number rating to the reviews? we could do a max_by
end