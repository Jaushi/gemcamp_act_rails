class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.integer :quantity
      t.decimal :price, precision: 10, scale: 2
      t.boolean :available
      t.datetime :released_at
      t.datetime :expiry_date
      t.decimal :discount, precision: 5, scale: 2

      t.timestamps
    end
  end
end
