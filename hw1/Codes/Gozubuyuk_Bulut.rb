def foo(key, value)
   puts "#{key}: #{value}"
end

# Initialize
credits = {"CS319" => 4, 
    "CS315" => 3,
    "MATH225" => 4,
    "ENG401" => 2
}
  
# Get the value for a given key
puts "Value for CS315 is #{credits["CS315"]}"

# Add a new element
credits["GRA131"] = 3

# Remove an element 
credits.delete("ENG401")

# Modify the value of an existing element
credits["CS315"] = 999

# Search for the existence of a key
puts credits.key?("CS101")
puts credits.key?("CS315")

# Search for the existence of a value
puts credits.has_value?(0)
puts credits.has_value?(3)

# Loop through an associative array, apply a function, called foo, which simply prints the key-value pair
credits.each do |k,v|
    foo(k,v)
end
