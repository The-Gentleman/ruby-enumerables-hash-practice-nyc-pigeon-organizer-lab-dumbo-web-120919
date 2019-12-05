def nyc_pigeon_organizer(data)
require 'pry'
# binding.pry 
male_names = data[:gender][:male]
female_names = data[:gender][:female]
names = [male_names, female_names].flatten
# names = ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky", "Queenie", "Ms. K"] 

result = {}
 
 names.each do |name|  
 result[name] = {
   :color => [],
   :gender => [],
   :lives => []
 } 
 end 
 data.each do |attribute, hash_of_info|
 
  hash_of_info.each do |pigeon_attribute, names|
   
  
    names.each do |color|
    result[color][attribute] << pigeon_attribute.to_s
    end   
  binding.pry
  end
 end 
result   
end 
# {:color=>
#   {:purple=>["Theo", "Peter Jr.", "Lucky"],
#   :grey=>["Theo", "Peter Jr.", "Ms. K"],   :white=>["Queenie", "Andrew", "Ms. K", "Alex"],   :brown=>["Queenie", "Alex"]}, :gender=>
#   {:male=>["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
#   :female=>["Queenie", "Ms. K"]},
# :lives=>
#   {"Subway"=>["Theo", "Queenie"],
#   "Central Park"=>["Alex", "Ms. K", "Lucky"],
#   "Library"=>["Peter Jr."],
#   "City Hall"=>["Andrew"]}}