class Doctor::AppoinmentsController < ApplicationController

	def index
		@appointments = Appointment.appoinments_for_doctor(current_user.id)
	end

	def create
		appointment = Appointment.find(params[:id])
		if appointment.status
			appointment.status = false
		else
			appointment.status = true
		end
		appointment.save
		redirect_to doctor_root_path, notice: "Appointment status has been updated"
	end
end
