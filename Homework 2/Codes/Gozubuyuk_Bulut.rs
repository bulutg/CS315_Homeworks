fn main() {
    println!("---------pretest");
    //pretest
    let mut i = 0;
    while i < 3 {
        println!("{}", i);
        i = i + 1
    }

    println!("---------posttest");
    //posttest

    i = 0;

    loop {
        println!("{}", i);
        i = i + 1;
        if i > 2 { break; }
    }

    println!("---------break");
    //break

    i = 0;
    while i < 3 {
        if i == 2 {break;}
        println!("{}", i);
        i = i + 1
    }

    println!("---------continue");
    //continue

    i = 0;
    while i < 3 {
        i = i + 1;
        if i == 2 {continue;}
        println!("{}", i);
    }

    println!("---------labeledbreak");
    //labeledbreak

    'label: loop {
        loop {
            println!("test");
            break 'label;
        }
    }

    println!("---------labeledcontinue");
    //labeledcontinue

    i = 0;
    let mut j = 0;
    'anotherlabel: while i < 2 {
        while j < 2 {
          println!("{}{}", i, j);
          j = j + 1;
          if i == j {continue 'anotherlabel;}
        }
    i = i + 1;
    println!("{}",i);
    }

    println!("---------returnwithbreak");
    //returnwithbreak

    i = 0;
    let return_value = loop {
        i = i + 2;
        if i == 6 {break i;}
    };

    println!("{}", return_value);
}