json.array! @jamaicans do |jamaican|
  json.partial! 'jamaican.json.jbuilder', jamaican: jamaican
end