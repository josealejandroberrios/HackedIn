class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.string :avatar
      t.text :about
      t.string :country
      t.references :user, foreign_key: true
      t.references :level, foreign_key: true

      t.timestamps
    end
  end
end
