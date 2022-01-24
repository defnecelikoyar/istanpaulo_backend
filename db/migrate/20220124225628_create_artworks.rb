class CreateArtworks < ActiveRecord::Migration[6.1]
  def change
    create_table :artworks do |t|
      t.string :title
      t.string :artist
      t.integer :date
      t.string :description
      t.string :image_url
    end
  end
end
