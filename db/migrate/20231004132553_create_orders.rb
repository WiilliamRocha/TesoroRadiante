class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.integer :amount
      t.string :client
      t.text :details
      t.integer :date
      t.references :name_product_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
