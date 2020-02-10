class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.string :title
      t.string :description
      t.datetime :schedule_at
      t.integer :patient_id
      t.integer :doctor_id

      t.timestamps
    end
  end
end
