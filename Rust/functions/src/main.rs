fn main() {
    println!("Hello, world!");

    another_function(5);

    let x = {
        let y = 6;
        y + 1
    };

    print_labeled_measurement(seconds_to_hour(3600), "hours");

    println!("The value of x is {x}");
}

fn another_function(x: i32) {
    println!("Hello from the other side~");
    println!("The value of x is: {x}");
}
 
// Print the input hours with label
fn print_labeled_measurement(value: f32, unit_label: &str) {
    println!("The measurement is: {value} {unit_label}");
}

fn seconds_to_hour(x: i16) -> f32 {
    let mut x: f32 = x as f32; // Change the type and mutability of x for following calculations.
    x = x / 60.0; // Seconds to minutes
    x / 60.0  // Minutes to hours
}
