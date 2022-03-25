json.extract! notodo, :id, :title, :completed, :created_at, :updated_at
json.url notodo_url(notodo, format: :json)
