json.extract! message, :id, :subjet, :body, :created_at, :updated_at
json.url message_url(message, format: :json)