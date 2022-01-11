json.extract! recipients_list, :id, :name, :user_id, :created_at, :updated_at
json.url recipients_list_url(recipients_list, format: :json)
