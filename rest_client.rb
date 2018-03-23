require 'rest-client'
puts "*************************************"
print "what would you like to search for: "
response = gets.chomp
response = response.split.join("+")

client = RestClient.get("https://www.bing.com/search?q=#{response}")


puts "Code:"
puts client.code

puts "Cookies:"
puts client.cookies

puts "Headers:"
puts client.headers

puts "Body:"
puts client.body
puts "************************************"
