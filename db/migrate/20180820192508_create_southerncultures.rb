class CreateSoutherncultures < ActiveRecord::Migration[5.1]
  def change
    create_table :southerncultures do |t|
      t.string :quote
      t.references :user
      t.string :about
      t.string :image

      t.timestamps
    end
  end
end
