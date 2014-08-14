json.array!(@curriculums) do |curriculum|
  json.extract! curriculum, :id, :name
  json.url curriculum_url(curriculum, format: :json)
end
