require 'httparty'

postal_code_response = HTTParty.get('https://represent.opennorth.ca/postcodes/L5G4L3/')

postal_code_json = JSON.parse(postal_code_response.body)

postal_code_json["representatives_centroid"].each do |x|
  p "Name: #{x["name"]}, Email: #{x["email"]}"
end
