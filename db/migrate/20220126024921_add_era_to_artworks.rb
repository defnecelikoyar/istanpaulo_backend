class AddEraToArtworks < ActiveRecord::Migration[6.1]
  def change
    add_column :artworks, :era, :string
  end
end
