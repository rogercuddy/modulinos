// Compile:
//
// rustc --lib scriptedmain.rs
// rustc test.rs -L .
//
// Run:
//
// ./test

use scriptedmain;
use std;

fn main() {
	std::io::println("Test: The meaning of life is " + core::int::to_str(scriptedmain::meaningOfLife(), 10u));
}