json.array!(@reviews) do |review|
  json.extract! review, :id, :title, :author, :description
  json.url review_url(review, format: :json)
end
