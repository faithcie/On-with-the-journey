use std::cmp::Ordering;

fn main() {
    let price = 3;
    
    let threshold = 5;

    match price.cmp(&threshold) {
        Ordering::Less => println!("It's affordable!"),
        Ordering::Equal => println!("It's affordable!"),
        Ordering::Greater => println!("Too expensive!")
    }

    if price < 5 {
        println!("It's affordable!");
    } else if price < 10 {
        println!("Ugh~");
    } else {
        println!("Too expensive!");
    }

    use_if_in_let(true);

    loloop( 9 );

    dual_loop();

    while_loop();

    for_loop();

    for_loop_clean();
}

fn use_if_in_let ( condition: bool ) {
    let number = if condition { 1 } else { 0 };

    println!("The boolean value number of the condition is: {number}");
}

fn loloop( round: i8 ) {
    let mut counter = 0;
    loop {
        counter += 1;
        println!("{counter}st lol");
        if counter == round {
            break;
        }
    }
}

fn dual_loop() {
    let mut count = 0;
    'counting_up: loop {
        println!("count = {count}");
        let mut remaining = 10;

        loop {
            println!("remaining = {remaining}");
            if remaining == 9 {
                break;
            }
            if count == 2 {
                break 'counting_up;
            }
            remaining -= 1;
        }

        count += 1;
    }
    println!("End count = {count}");
}

fn while_loop() {
    let mut number = 9;

    while number != 0 {
        println!("count {number}!");

        number -= 1;
    }

    println!("EXCALIBUR!!!!")
}

fn for_loop() {
    let arr = [10, 20, 30, 40, 50];
    for element in arr {
        println!("the value is: {element}");
    }
}

fn for_loop_clean() {
    for time in (1..10).rev() {
        println!("count {time}!");
    }
    println!("EXCALIBUR!");
}
