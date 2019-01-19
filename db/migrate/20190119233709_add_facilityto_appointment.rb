class AddFacilitytoAppointment < ActiveRecord::Migration[5.2]
  def change
    remove_column :appointments, :facility_id
    add_reference :appointments, :facility, foreign_key: true
  end
end
