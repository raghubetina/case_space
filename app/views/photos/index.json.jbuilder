json.array!(@photos) do |photo|
  json.extract! photo, :id, :note, :user_id
  json.url photo_url(photo, format: :json)
end
