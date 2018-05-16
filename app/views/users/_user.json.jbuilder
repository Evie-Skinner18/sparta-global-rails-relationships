json.extract! user, :id, :name, :age, :cheese_lover, :created_at, :updated_at
json.url user_url(user, format: :json)
