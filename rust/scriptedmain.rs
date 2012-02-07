#[link(name = "scriptedmain")];

use std;

fn meaningOfLife() -> int {
	ret 42;
}

fn main() {
	std::io::println("Main: The meaning of life is " + core::int::to_str(meaningOfLife(), 10u));
}