class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.string :title
      t.string :location
      t.date :check_in
      t.date :check_out
      t.integer :party_size

      t.timestamps
    end
  end
end
