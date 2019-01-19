json.extract! appointment, :id, :title, :location, :check_in, :check_out, :party_size, :created_at, :updated_at
json.url appointment_url(appointment, format: :json)
