json.id jamaican.id
json.name jamaican.full_name
json.bobsled_position jamaican.position

json.shirts jamaican.shirts do |shirt|
  json.color shirt.color
  json.size shirt.size
end