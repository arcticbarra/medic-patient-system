class CreatePeople < ActiveRecord::Migration[5.1]
  def change
    create_table :people do |t|
      t.string :first_name
      t.string :last_name
      t.date :dob
      t.integer :gender

      t.timestamps
    end
  end
end
