json.array!(@cases) do |case|
  json.extract! case, :id, :title, :note, :user_id
  json.url case_url(case, format: :json)
end
