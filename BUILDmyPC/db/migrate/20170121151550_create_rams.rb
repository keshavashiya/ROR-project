class CreateRams < ActiveRecord::Migration
  def change
    create_table :rams do |t|
      t.string :name
      t.string :ram_type
      t.string :manufacturer
      t.text :description
      t.string :picture
      t.integer :price

      t.timestamps null: false
    end
  end
end
