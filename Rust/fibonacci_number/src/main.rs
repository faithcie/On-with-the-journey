use std::io;
use num_bigint::BigUint;
use num_traits::{Zero, One};

fn main() {
    println!("Fibonacci number generator");
    
    println!("Please input a number you wanna generate:");
    
    let mut size = String::new();
    
    io::stdin()
        .read_line(&mut size)
        .expect("Please input something!");

    let size = match size.trim().parse::<u32>(){
        Ok(num) => num,
        Err(_) => {
            println!("Error: Invalid input. Please input a positive number");
            return;
        }
    };

    let mut a: BigUint = Zero::zero();
    let mut b: BigUint = One::one();

    for index in 1..=size {
        println!("The {index}th fibonacci number is {a}");
        let next= &a + &b;
        a = b;
        b = next;
    }
}
