//! Modulino

#![crate_id(name = "scriptedmain")]

extern crate std;

// A dummy function to import into test.rs
pub fn meaning_of_life() -> int {
  //! The answer to life, the universe, and everything.
	return 42;
}

#[allow(dead_code)]
fn main() {
	println!("Main: The meaning of life is {}", meaning_of_life().to_str());
}
