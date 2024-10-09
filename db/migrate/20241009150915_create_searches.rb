class CreateSearches < ActiveRecord::Migration[7.0]
  def change
    create_table :searches do |t|
      t.string :name
      t.integer :quantity_min
      t.integer :quantity_max
      t.decimal :price_min
      t.decimal :price_max
      t.boolean :available
      t.date :released_at_start
      t.date :released_at_end
      t.date :expired_date_start
      t.date :expired_date_end

      t.timestamps
    end
  end
end
