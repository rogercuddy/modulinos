//! Build configuration

extern crate tinyrick;
extern crate tinyrick_extras;

/// Run clippy
fn clippy() {
  tinyrick_extras::clippy();
}

/// Run linters
fn lint() {
  tinyrick::deps(clippy);
}

/// Compile project
fn build() {
  tinyrick_extras::build();
}

/// Generate documentation
fn doc() {
  tinyrick_extras::doc();
}

/// Install applications
fn install_binaries() {
  tinyrick_extras::install_binaries();
}

/// Install artifacts
fn install() {
  tinyrick::deps(install_binaries);
}

/// Uninstall artifacts
fn uninstall() {
  tinyrick_extras::uninstall();
}

/// Run integration tests
fn integration_test() {
  tinyrick::deps(install);

  tinyrick::exec!("modulino");
  tinyrick::exec!("modulino-test");
}

/// Run all tests
fn test() {
  tinyrick::deps(integration_test);
}

/// Publish to crate repository
fn publish() {
  tinyrick_extras::publish();
}

/// Run cargo clean
fn clean_cargo() {
  tinyrick_extras::clean_cargo();
}

/// Clean workspaces
fn clean() {
  tinyrick::deps(clean_cargo);
}

tinyrick::wubba_lubba_dub_dub!(
  test;
  clippy,
  lint,
  build,
  doc,
  install_binaries,
  install,
  uninstall,
  integration_test,
  publish,
  clean_cargo,
  clean
);
