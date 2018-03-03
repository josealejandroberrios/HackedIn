class CreateLevels < ActiveRecord::Migration[5.1]
  def change
    create_table :levels do |t|
      t.string :name
      t.text :positive_description
      t.text :negative_description

      t.timestamps
    end
  end
end
