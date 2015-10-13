json.array!(@campaigns) do |campaign|
  json.extract! campaign, :id, :title, :top, :body, :bottom, :stylesheet, :page_id
  json.url campaign_url(campaign, format: :json)
end
