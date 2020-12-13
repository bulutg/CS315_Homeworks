void foo(key, value) {
  // simply prints the key-value pair
  print('${key}: ${value}');
}

void main() {
  // Initialize
  var credits = {
    'CS319': 4,
    'CS315': 3,
    'MATH225': 4,
    'ENG401': 2
    };
  
  // Get the value for a given key
  print("Value for CS315 is: " + credits['CS315'].toString());
  
  // Add a new element
  credits['GRA131'] = 3;
  
  // Remove an element 
  credits.remove('ENG401');
  
  // Modify the value of an existing element
  credits['CS319'] = 0;
  
  // Search for the existence of a key
  print("CS315 exists: " + credits.containsKey('CS315').toString());
  print("CS101 exists: " + credits.containsKey('CS101').toString());
  
  // Search for the existence of a value
  print("5 exists: " + credits.containsValue(5).toString());
  print("4 exists: " + credits.containsValue(4).toString());
  
  // Loop through an associative array, apply a function, called foo, which simply prints the key-value pair
  credits.forEach((key,value) => foo(key,value));

}