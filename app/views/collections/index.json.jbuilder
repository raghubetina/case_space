json.array!(@collections) do |collection|
  json.extract! collection, :id, :title, :note, :user_id
  json.url collection_url(collection, format: :json)
end
