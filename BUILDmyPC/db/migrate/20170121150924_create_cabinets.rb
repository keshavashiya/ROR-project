class CreateCabinets < ActiveRecord::Migration
  def change
    create_table :cabinets do |t|
      t.string :name
      t.string :cabinet_type
      t.string :manufacturer
      t.text :description
      t.string :picture
      t.integer :price

      t.timestamps null: false
    end
  end
end
