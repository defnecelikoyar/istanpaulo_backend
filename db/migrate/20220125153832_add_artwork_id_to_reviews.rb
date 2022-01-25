class AddArtworkIdToReviews < ActiveRecord::Migration[6.1]
  def change
    add_column :reviews, :artwork_id, :integer
  end
end
