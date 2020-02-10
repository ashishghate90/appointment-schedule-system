class AddNotificationSentToAppointment < ActiveRecord::Migration[5.2]
  def change
	add_column :appointments, :is_notification_sent_to_patient, :boolean, default: false
	add_column :appointments, :is_notification_sent_to_doctor, :boolean, default: false	  
  end
end
