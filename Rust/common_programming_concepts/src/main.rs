use std::io;

fn main() {
    let mut x: i8 = 5;
    println!("The value of x is: {x}");
    x = 6;
    println!("The value of x is: {x}");
    x = 7;
    println!("The value of x is: {x}");

    const THREE_HOURS_IN_SECONDS: u32 = 60 * 60 * 3;
    println!("Three hours in seconds is: {THREE_HOURS_IN_SECONDS}");

    let y: i8= 5;
    println!("The value of y is: {y}");

    let y = 1 - y;

    {
        let y = y * 2;
        println!("The value of y is: {y}");
    }

    println!("The value of y is: {y}");

    let mut z = x / y;
    println!("The devision of x / y is: {z}");
    z = x % y;
    println!("The remainder of x % y is: {z}");
    
    let m: f32 = 0.1;
    let n: f32 = 0.2;
    let o = m + n;

    println!("0.1 + 0.2 = {o}, suck it JS!");

    //let t: bool = true;
    //let f = false;

    let c: char = '禅';
    println!("{c}");

    let tup: (i32, f64, u8) = (-500, 6.4, 1);
    
    let (a, b, c) = tup;

    println!("a = {a}, b = {b}, c = {c}");

    let set: (i32, f64, u8) = (-39, 8.9, 255);

    let a = set.0;
    let b = set.1;
    let c = set.2;

    println!("a = {a}, b = {b}, c = {c}");

    let arr = [1, 2, 3, 4, 5];

    let arrlen = arr.len() -1;

    let f = arr[4];

    println!("The fifth natural number is {f}");

    println!("Please enter an array index. (from 0-{arrlen})");

    let mut index = String::new();

    io:: stdin()
        .read_line(&mut index)
        .expect("Failed to read line");

    let index: usize = index
        .trim()
        .parse()
        .expect("Index entered was not a number");

    let element = arr[index];

    println!("The value of the element at index {index} is: {element}");

    another_function();
}

fn another_function() {
    println!("Hello from the other side");
}
