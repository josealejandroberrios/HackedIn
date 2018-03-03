class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.string :company, null: false
      t.string :position, null: false
      t.string :description, null: false
      t.date :start_date, null: false
      t.date :finish_date
      t.references :profile, foreign_key: true

      t.timestamps
    end
  end
end
