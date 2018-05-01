class AddSalaryToDoctor < ActiveRecord::Migration[5.1]
  def change
    add_column :doctors, :salary, :float
  end
end
