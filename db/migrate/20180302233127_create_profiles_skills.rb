class CreateProfilesSkills < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles_skills, id: false do |t|
      t.references :profile, foreign_key: true
      t.references :skill, foreign_key: true
    end
  end
end
