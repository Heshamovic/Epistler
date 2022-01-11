json.extract! recipient, :id, :name, :email, :user_id, :created_at, :updated_at
json.url recipient_url(recipient, format: :json)
