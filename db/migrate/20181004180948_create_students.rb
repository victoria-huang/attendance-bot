class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :name
      t.string :slack_id
      t.string :image_url
      t.references :cohort, foreign_key: true

      t.timestamps
    end
  end
end
