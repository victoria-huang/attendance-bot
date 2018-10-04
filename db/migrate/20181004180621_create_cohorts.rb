class CreateCohorts < ActiveRecord::Migration[5.2]
  def change
    create_table :cohorts do |t|
      t.string :nickname
      t.string :name
      t.references :campus, foreign_key: true

      t.timestamps
    end
  end
end
