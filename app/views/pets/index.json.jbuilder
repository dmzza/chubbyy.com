json.array!(@pets) do |pet|
  json.extract! pet, :id, :color_id, :shape_id, :last_name
  json.url pet_url(pet, format: :json)
end
