class CreateStudentDays < ActiveRecord::Migration[5.2]
  def change
    create_table :student_days do |t|
      t.string :status
      t.datetime :time_in
      t.references :student, foreign_key: true
      t.references :day, foreign_key: true

      t.timestamps
    end
  end
end
