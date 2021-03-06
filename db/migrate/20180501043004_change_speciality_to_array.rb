class ChangeSpecialityToArray < ActiveRecord::Migration[5.1]
  def change
    add_column :doctors, :speciality_tmp, :string, array: true

    Doctor.reset_column_information
    Doctor.all.each do |doctor|
      doctor.update_column(:speciality_tmp, [doctor.speciality.to_s])
    end

    remove_column :doctors, :speciality
    rename_column :doctors, :speciality_tmp, :speciality
  end
end
