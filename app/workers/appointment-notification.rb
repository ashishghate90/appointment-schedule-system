require 'sidekiq-scheduler'
class Notification
  include Sidekiq::Worker
  def perform
    Appointment.send_appoinment_notications
  end
end