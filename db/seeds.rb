# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# dog_url = "https://random.dog/woof.json"
# dog = JSON.parse(RestClient.get(dog_url))
# p dog["url"]
# result = JSON.parse(RestClient.get("https://maps.googleapis.com/maps/api/place/findplacefromtext/json?input=St%20Marys%20Dog%20Park%20NY&inputtype=textquery&fields=photos&key=AIzaSyDe-msCH_NN1woQafqFRngQLZrGOQ5xeCE"))
# p result["candidates"][0]["photos"][0]['html_attributions']
# def fetch_parks(url)
#   result = JSON.parse(RestClient.get(url))
#   create_park(result)
# end
#
#
# def create_park(result)
#   place = result['results'][0].fetch('place_id')
#   format_address = result['results'][0].fetch('formatted_address')
#   lat_res = result['results'][0].fetch('geometry')['location']['lat']
#   lng_res = result['results'][0].fetch('geometry')['location']['lng']
#   photo = @client.spot(place).photos[0].fetch_url(400)
#   DogPark.create(name: park[:Name], location: format_address, images: photo, description: park[:Address], dog_run: park[:DogRuns_Type] == 'Run' ? true : false, off_leash: park[:DogRuns_Type] == 'Off-Leash' ? true : false, accessibility: park[:Accessible], lat: lat_res, lng: lng_res)
# end







# url = 'https://maps.googleapis.com/maps/api/geocode/json?address=St+Marys+Dog+Park+NY&key=AIzaSyDe-msCH_NN1woQafqFRngQLZrGOQ5xeCE'
#
# result = JSON.parse(RestClient.get(url))
# p result['results'][0].fetch('geometry')['location']['lat']



# puts @client.spots(40.8096253, -73.9121229)
#
# @client.spot('ChIJtYplX8f1wokRqscrFI0LQRE').photos[0].fetch_url(400)
