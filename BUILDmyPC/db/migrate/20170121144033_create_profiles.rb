class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :email
      t.string :mobile
      t.text :description
      t.string :picture

      t.timestamps null: false
    end
  end
end
