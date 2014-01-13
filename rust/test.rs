extern mod scriptedmain;
extern mod std;

use scriptedmain::meaning_of_life;
use std::io::println;

fn main() {
	println("Test: The meaning of life is " + meaning_of_life().to_str());
}
