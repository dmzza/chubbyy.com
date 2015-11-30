json.array!(@shapes) do |shape|
  json.extract! shape, :id, :name, :image
  json.url shape_url(shape, format: :json)
end
