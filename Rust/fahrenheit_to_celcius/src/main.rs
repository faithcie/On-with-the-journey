use std::io;

fn main() {
    println!("Thank you for using Fahrenheit to Celsius converter!");
    println!("Please input the Fahrenheit temperature:");

    let mut fahrenheit = String::new();

    io::stdin()
        .read_line(&mut fahrenheit)
        .expect("Please input the temperature number");

    let fahrenheit = match fahrenheit.trim().parse::<f32>(){
        Ok(num) => num,
        Err(_) => {
            println!("Error: Invalid input. Please enter a value of temperature in fahrenheit.");
            return;
        }
    };

    let celcius = (fahrenheit - 32.0) * 5.0/9.0;

    println!("{fahrenheit}°F in celcius is {celcius}°C")
}
