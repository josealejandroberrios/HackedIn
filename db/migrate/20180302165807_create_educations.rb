class CreateEducations < ActiveRecord::Migration[5.1]
  def change
    create_table :educations do |t|
      t.string :place
      t.string :qualification
      t.string :discipline
      t.date :start_date
      t.date :finish_date
      t.references :profile, foreign_key: true

      t.timestamps
    end
  end
end
