json.array! @jamaicans do |jamaican|
  json.id jamaican.id
  json.name "#{jamaican.first_name} #{jamaican.last_name}"
  json.bobsled_position jamaican.position
end