json.array!(@syllabuses) do |syllabus|
  json.extract! syllabus, :id, :version, :subject_id
  json.url syllabus_url(syllabus, format: :json)
end
