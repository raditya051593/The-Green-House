game

// main.rs

use std::io;

fn main() {
    println!("Welcome to the Green House!");

    let mut points = 0;
    loop {
        println!("Choose an action:");
        println!("1. Water the plants");
        println!("2. Open the window");
        println!("3. Check the temperature");
        println!("4. Go outside");
        println!("5. Quit");

        let mut action = String::new();
        io::stdin().read_line(&mut action).expect("Failed to read line");
        
        let action: u32 = match action.trim().parse() {
            Ok(num) => num,
            Err(_) => {
                println!("Please type a valid number");
                continue;
            }
        };

        match action {
            1 => {
                println!("You watered the plants!");
                points += 10;
            },
            2 => {
                println!("You opened the window and a fresh breeze enters the room!");
                points += 5;
            },
            3 => {
                println!("The temperature is perfect!");
                points += 2;
            },
            4 => {
                println!("You went outside and enjoyed the scent of the nature!");
                points += 20;
            },
            5 => {
                println!("You have gained {} points!", points);
                break;
            },
            _ => {
                println!("Please type a valid number!");
                continue;
            }
        }
    }
}