//! Test importing of modulino

extern crate modulino;

use modulino::meaning_of_life;

#[allow(dead_code)]
fn main() {
  println!("Test: The meaning of life is {}", meaning_of_life());
}
