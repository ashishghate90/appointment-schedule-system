class AppointmentNotificationMailer < ApplicationMailer

	def send_appointment_notification(user)
    @user = user
    mail(to: @user.email, subject: 'Sample Email')
  end
end
