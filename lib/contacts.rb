require 'pry'

contacts = {
  "Jon Snow" => {
 # :name => "Jon" this is the same shit
    name: "Jon",
    email: "jon_snow@thewall.we", 
    favorite_ice_cream_flavors: ["chocolate", "vanilla", "mint chip"],
        knows: nil
  },
  "Freddy Mercury" => {
    name: "Freddy",
    email: "freddy@mercury.com",
    favorite_ice_cream_flavors: ["strawberry", "cookie dough", "mint chip"]
  }
}
 
def list_1(hash)
  hash.each do |person, data|
    #at this level, "person" is Jon Snow or Freddy and "data" is a hash of key/value pairs
    #to iterate over the "data" hash, we can use the following line: 
 
    data.each do |attribute, value|
      puts "#{attribute}: #{value}"
    end
  end
end 

# list_1(contacts)

def list_2(hash)
  hash.each do |person, data|
    #at this level, "person" is Jon Snow or Freddy and "data" is a hash of key/value pairs
    #to iterate over the "data" hash, we can use the following line: 
 
    data.each do |attribute, value|
      if attribute == :favorite_ice_cream_flavors
        value.each do |flavor|
          # here, each index element in an ice cream flavor string
          puts "#{flavor}"
        end 
      end
    end
  end
end 

# list_2(contacts)

def remove_strawberry(contacts)
  contacts.each do |person, contact_details_hash|
    contact_details_hash.each do |attribute, data|
      if attribute == :favorite_ice_cream_flavors
        data.delete_if {|ice_cream| ice_cream == "strawberry"}
     end 
    end
  end
end

remove_strawberry(contacts)

puts contacts ["Jon Snow"] [:email]
puts "//////"
puts contacts ["Jon Snow"].keys
puts contacts ["Jon Snow"].values