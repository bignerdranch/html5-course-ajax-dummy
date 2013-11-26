json.array!(@sightings) do |sighting|
  json.extract! sighting, *sighting.attribute_names
  json.url sighting_url(sighting, format: :json)
end

