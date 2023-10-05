class CreateCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :categories do |t|
      t.string :ring
      t.string :necklace
      t.string :earring

      t.timestamps
    end
  end
end
