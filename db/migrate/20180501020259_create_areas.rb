class CreateAreas < ActiveRecord::Migration[5.1]
  def change
    create_table :areas do |t|
      t.belongs_to :doctor, foreign_key: true
      t.string :name
      t.string :location

      t.timestamps
    end
  end
end
