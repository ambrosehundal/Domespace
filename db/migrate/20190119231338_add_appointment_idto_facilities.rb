class AddAppointmentIdtoFacilities < ActiveRecord::Migration[5.2]
  def change
    add_reference :appointments, :facility
  end
end
