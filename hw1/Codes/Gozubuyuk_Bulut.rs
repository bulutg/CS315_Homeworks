use std::collections::HashMap;

fn foo(key:&str,value:&i32){
    println!("{}: {}", key, value);
}

fn main() {
    // Initialize
    let mut credits: HashMap<&str, i32> =
    [("CS319", 4),
    ("CS315", 3),
    ("MATH225", 4),
    ("ENG401", 2)].iter().cloned().collect();

      
    // Get the value for a given key
    println!("Value for CS315 is {:?}", credits.get("CS315").unwrap());

    // Add a new element
    credits.insert("GRA131",3);

    // Remove an element 
    credits.remove("ENG401");

    // Modify the value of an existing element
    *credits.get_mut("CS315").unwrap() = 999;

    // Search for the existence of a key
    println!("{:?}", credits.contains_key("CS101"));
    println!("{:?}", credits.contains_key("CS315"));

    // Search for the existence of a value
    println!("{:?}", credits.values().any(|&value| value == 9));
    println!("{:?}", credits.values().any(|&value| value == 3 ));

    // Loop through an associative array, apply a function, called foo, which simply prints the key-value pair
    for (k, v) in &credits {
        foo(k,v);
    }
}