//! Test importing of modulino

extern crate modulino;

/// CLI entrypoint
#[allow(dead_code)]
fn main() {
    println!("Test: The meaning of life is {}", modulino::meaning_of_life());
}
