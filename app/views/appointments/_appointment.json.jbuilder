json.extract! appointment, :id, :title, :description, :schedule_at, :patient_id, :doctor_id, :created_at, :updated_at
json.url appointment_url(appointment, format: :json)
