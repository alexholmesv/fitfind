json.array!(@gyms) do |gym|
  json.extract! gym, :id, :name, :description, :latitude, :longitude, :address, :comuna
  json.url gym_url(gym, format: :json)
end
