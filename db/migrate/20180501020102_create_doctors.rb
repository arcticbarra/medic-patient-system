class CreateDoctors < ActiveRecord::Migration[5.1]
  def change
    create_table :doctors do |t|
      t.belongs_to :person, foreign_key: true
      t.integer :speciality
      t.integer :years_experience

      t.timestamps
    end
  end
end
