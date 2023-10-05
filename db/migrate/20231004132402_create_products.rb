class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :color
      t.integer :size
      t.integer :price
      t.integer :amount
      t.text :details
      t.references :category_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
