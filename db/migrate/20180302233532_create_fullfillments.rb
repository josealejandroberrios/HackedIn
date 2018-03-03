class CreateFullfillments < ActiveRecord::Migration[5.1]
  def change
    create_table :fullfillments do |t|
      t.references :profile, foreign_key: true
      t.references :requirement, foreign_key: true
      t.boolean :status, default: false, null: false

      t.timestamps
    end
  end
end
