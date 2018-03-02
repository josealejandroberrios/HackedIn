class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.string :company
      t.string :position
      t.string :description
      t.date :start_date
      t.date :finish_date
      t.references :profile, foreign_key: true

      t.timestamps
    end
  end
end
