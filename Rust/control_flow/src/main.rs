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

    loloop( 69 );

    dual_loop();
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
            print!("remaining = {remaining}");
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
}
