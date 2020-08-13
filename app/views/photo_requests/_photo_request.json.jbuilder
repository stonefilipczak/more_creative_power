json.extract! photo_request, :id, :user_id, :schedule, :contact, :status, :reply, :created_at, :updated_at
json.url photo_request_url(photo_request, format: :json)
