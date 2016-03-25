json.array!(@requirements) do |requirement|
  json.extract! requirement, :id, :name, :page, :status
  json.url requirement_url(requirement, format: :json)
end
