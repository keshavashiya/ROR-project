class CreateGraphicsCards < ActiveRecord::Migration
  def change
    create_table :graphics_cards do |t|
      t.string :name
      t.string :graphics_card_type
      t.string :manufacturer
      t.text :description
      t.string :picture
      t.integer :price

      t.timestamps null: false
    end
  end
end
