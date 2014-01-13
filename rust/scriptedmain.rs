#[link(name = "scriptedmain")];

extern mod std;

use std::io::println;

pub fn meaning_of_life() -> int {
	return 42;
}

fn main() {
	println("Main: The meaning of life is " + meaning_of_life().to_str());
}
