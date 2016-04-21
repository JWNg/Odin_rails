require 'rest-client'
url = "http://localhost:3000/"
puts RestClient.get(url+"users")
puts " ---------------------------------- "
puts RestClient.get(url+"users/new")
puts " ---------------------------------- "
puts RestClient.get(url+"users/id/edit")
puts " ---------------------------------- "
puts RestClient.get(url+"users/id")
puts " ---------------------------------- "
puts RestClient.post(url+"users", '')
