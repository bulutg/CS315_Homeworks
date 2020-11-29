<?php

function foo($key, $value) {
    // simply prints the key-value pair
    echo $key.": ".$value."\n";
}

// Initialize
$credits = array("CS319" => 4,  
              "CS315" => 3, 
              "MATH225" => 4,
              "ENG401" => 2
              );   
              
// Get the value for a given key
echo "Value for CS315 is ${credits["CS315"]}\n";

// Add a new element
$credits['GRA131'] = 3;

// Remove an element 
unset($credits["ENG401"]);

// Modify the value of an existing element
$credits["CS315"] = 999;

// Search for the existence of a key
echo array_key_exists("CS101", $credits) ? "true\n": "false\n";
echo array_key_exists("CS315", $credits) ? "true\n" : "false\n";

// Search for the existence of a value
echo in_array(9, $credits) ? "true\n": "false\n";
echo in_array(3, $credits) ? "true\n": "false\n";

// Loop through an associative array, apply a function, called foo, which simply prints the key-value pair
foreach( $credits as $k => $v )
    foo($k,$v);