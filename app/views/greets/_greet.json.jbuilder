json.extract! greet, :id, :content, :created_at, :updated_at
json.url greet_url(greet, format: :json)
