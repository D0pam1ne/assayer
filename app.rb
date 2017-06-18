require 'net/http'
require 'json'
 
url = 'https://ohi-api.code4hr.org/vendors?name=Havana'
uri = URI(url)
response = Net::HTTP.get(uri)
data = JSON.parse(response)

data.each do |child|
    puts child[1]['name'] + " scored a " + child[1]['score'].to_s
end