class CreateCampusUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :campus_users do |t|
      t.references :user, foreign_key: true
      t.references :campus, foreign_key: true

      t.timestamps
    end
  end
end
