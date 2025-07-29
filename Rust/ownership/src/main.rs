fn main() {
    let stringvar = "hello";
    {
        let stringvar = "world";
        println!("{stringvar}");
    }
    println!("{stringvar}");
}
