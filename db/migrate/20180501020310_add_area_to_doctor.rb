class AddAreaToDoctor < ActiveRecord::Migration[5.1]
  def change
    add_reference :doctors, :area, foreign_key: true
  end
end
