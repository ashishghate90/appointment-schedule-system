class Appointment < ApplicationRecord
	belongs_to :patient, :class_name => 'User', :foreign_key => 'patient_id'
	belongs_to :doctor, :class_name => 'User', :foreign_key => 'doctor_id'
	validate :validate_schedule_date

	def validate_schedule_date
		unless self.schedule_at >= DateTime.now + (5/24.0)
			self.errors[:base] << "Can book Appointment only 5 hours at-least before"
		end
	end

	def self.appoinments_for_doctor doctor_id
		return self.where(doctor_id: doctor_id)
	end

	def self.send_appoinment_notications
		appointments = Appointment.all
		appointments.each do |appointment|
			if appointment.schedule_at - 1.hours <= DateTime.now
				AppointmentNotificationMailer.send_appointment_notification(appointment.patient) unless appointment.is_notification_sent_to_patient
				AppointmentNotificationMailer.send_appointment_notification(appointment.doctor) unless appointment.is_notification_sent_to_doctor
			end
		end
	end
end