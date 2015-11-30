json.array!(@colors) do |color|
  json.extract! color, :id, :hex_value
  json.url color_url(color, format: :json)
end
