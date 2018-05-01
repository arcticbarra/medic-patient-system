class CreateTreatments < ActiveRecord::Migration[5.1]
  def change
    create_table :treatments do |t|
      t.belongs_to :patient, foreign_key: true
      t.belongs_to :doctor, foreign_key: true
      t.integer :duration
      t.string :medicaments
      t.string :description

      t.timestamps
    end
  end
end
