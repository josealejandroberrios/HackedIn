class CreateRequirements < ActiveRecord::Migration[5.1]
  def change
    create_table :requirements do |t|
      t.string :name, null: false
      t.references :skill, foreign_key: true

      t.timestamps
    end
  end
end
