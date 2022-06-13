json.extract! entry, :id, :title, :body, :due_date, :resurface_date, :entry_type, :collection_id, :created_at, :updated_at
json.url entry_url(entry, format: :json)
json.body entry.body.to_s
