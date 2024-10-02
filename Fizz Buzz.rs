// © Taha Daneshmand - github.com/taha-daneshmand/code-golf_solutions

fn main() {
    for i in 1..=100 {
        let is_fizz = i % 3 == 0;
        let is_buzz = i % 5 == 0;

        if is_fizz {
            print!("Fizz");
        }
        if is_buzz {
            print!("Buzz");
        }
        if !is_fizz && !is_buzz {
            print!("{}", i);
        }
        
        println!();
    }
}
