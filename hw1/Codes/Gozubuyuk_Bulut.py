def foo(key, value):
    # simply prints the key-value pair
    print(key, value)

# Initialize
credits = {
  "CS319": 4,
  "CS315": 3,
  "MATH225": 4,
  "ENG401": 2
}
  
# Get the value for a given key
print("Value for CS315 is", credits["CS315"])

# Add a new element
credits["GRA131"] = 3

# Remove an element 
del credits["ENG401"]

# Modify the value of an existing element
credits["CS315"] = 999

# Search for the existence of a key
print("CS101" in credits)
print("CS315" in credits)

# Search for the existence of a value
print(0 in credits.values())
print(3 in credits.values())

# Loop through an associative array, apply a function, called foo, which simply prints the key-value pair
for key in credits:
    foo(key, credits[key])