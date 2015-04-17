#!/usr/bin/env perl6

module Modulino {
  sub meaning_of_life is export {
    return 42;
  }
}

sub MAIN {
  import Modulino;
  say 'Main: The meaning of life is ' ~ meaning_of_life();
}
