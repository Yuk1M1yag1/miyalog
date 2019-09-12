class CreateLists < ActiveRecord::Migration[5.2]
  def change
    create_table :lists do |t|
      t.string :name
      t.string :taste
      t.string :price
      t.string :service
      t.text :memo
      t.string :image
      t.integer :total

      t.timestamps
    end
  end
end
