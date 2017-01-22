class CreateMotherboards < ActiveRecord::Migration
  def change
    create_table :motherboards do |t|
      t.string :name
      t.string :motherboard_type
      t.string :manufacturer
      t.text :description
      t.string :picture
      t.integer :price

      t.timestamps null: false
    end
  end
end
