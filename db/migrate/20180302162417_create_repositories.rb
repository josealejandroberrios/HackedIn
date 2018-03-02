class CreateRepositories < ActiveRecord::Migration[5.1]
  def change
    create_table :repositories do |t|
      t.string :link
      t.references :profile, foreign_key: true

      t.timestamps
    end
  end
end
