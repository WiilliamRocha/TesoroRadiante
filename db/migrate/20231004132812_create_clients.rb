class CreateClients < ActiveRecord::Migration[7.0]
  def change
    create_table :clients do |t|
      t.string :firts_name
      t.string :last_name
      t.string :email
      t.integer :phone
      t.string :address
      t.string :country
      t.references :number_oder_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
