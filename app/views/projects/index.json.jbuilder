json.array!(@projects) do |project|
  json.extract! project, :id, :title, :note, :user_id
  json.url project_url(project, format: :json)
end
