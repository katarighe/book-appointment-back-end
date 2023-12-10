class AddUsernameAndDoctornameToAppointments < ActiveRecord::Migration[7.1]
  def change
    add_column :appointments, :username, :string
    add_column :appointments, :doctorname, :string
  end
end
