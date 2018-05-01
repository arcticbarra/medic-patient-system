class CreatePatients < ActiveRecord::Migration[5.1]
  def change
    create_table :patients do |t|
      t.belongs_to :person, foreign_key: true
      t.integer :insurance_plan

      t.timestamps
    end
  end
end
