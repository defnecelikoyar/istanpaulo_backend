class AddLoverIdToReviews < ActiveRecord::Migration[6.1]
  def change
    add_column :reviews, :lover_id, :integer
  end
end
