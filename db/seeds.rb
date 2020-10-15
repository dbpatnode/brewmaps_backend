# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Favorite.destroy_all
Note.destroy_all
Brewery.destroy_all
User.destroy_all

## USERS ##
user1 = User.create({
    name: 'Daniel',
    username: 'dbpatnode',
    email: 'dbpatnode@example.com',
    password: '123',
    password_confirmation: '123'
})
    
## BREWERIES ##
states = ["alabama", "alaska", "arizona", "arkansas", "california", "colorado", "connecticut", "delaware", "florida", "georgia", "hawaii", "idaho", "illinois", "indiana", "iowa", "kansas", "kentucky", "louisiana", "maine", "maryland", "massachusetts", "michigan", "minnesota", "mississippi", "missouri", "montana", "nebraska", "nevada", "new_hampshire", "new_jersey", "new_mexico", "new_york", "north_carolina", "north_dakota", "ohio", "oklahoma", "oregon", "pennsylvania", "rhode_island", "south_carolina", "south_dakota", "tennessee", "texas", "utah", "vermont", "virginia", "washington", "west_virginia", "wisconsin", "wyoming"]

states.each do |state|
    resp = RestClient::Request.execute(method: :get,
        url: "https://api.openbrewerydb.org/breweries?by_state=" + "#{state}",
        headers:{
            'Content-Type': 'application/json'
        }) 
        brewery_data = JSON.parse(resp.body)
        breweries = brewery_data

    breweries.each do |brewery|
        Brewery.create({
        brewery_name: brewery["name"],
        brewery_type: brewery["brewery_type"],
        street: brewery["street"],
        city: brewery["city"],
        state: brewery["state"],
        postal_code: brewery["postal_code"],
        lng: brewery["longitude"],
        lat: brewery["latitude"],
        phone: brewery["phone"],
        website_url: brewery["website_url"]
        })
    end
end

    
    
puts "seeds seeded"
