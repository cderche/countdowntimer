json.extract! event, :id, :name, :expiration_date, :created_at, :updated_at
json.url event_url(event, format: :json)
