class CreateLovers < ActiveRecord::Migration[6.1]
  def change
    create_table :lovers do |t|
      t.string :name
      t.string :occupation
    end
  end
end
