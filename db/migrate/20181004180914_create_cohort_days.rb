class CreateCohortDays < ActiveRecord::Migration[5.2]
  def change
    create_table :cohort_days do |t|
      t.boolean :has_class
      t.references :cohort, foreign_key: true
      t.references :day, foreign_key: true

      t.timestamps
    end
  end
end
