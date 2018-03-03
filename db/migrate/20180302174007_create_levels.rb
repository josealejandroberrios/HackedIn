class CreateLevels < ActiveRecord::Migration[5.1]
  def change
    create_table :levels do |t|
      t.string :name, null: false
      t.text :positive_description, null: false
      t.text :negative_description, null: false

      t.timestamps
    end
  end
end
