class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.text :name
      t.text :description
      t.integer :price
      t.integer :store_id

      t.timestamps
    end
  end
end
