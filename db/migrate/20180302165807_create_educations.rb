class CreateEducations < ActiveRecord::Migration[5.1]
  def change
    create_table :educations do |t|
      t.string :place, null: false
      t.string :qualification, null: false
      t.string :discipline, null: false
      t.date :start_date, null: false
      t.date :finish_date
      t.references :profile, foreign_key: true

      t.timestamps
    end
  end
end
