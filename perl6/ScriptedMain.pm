#!/usr/bin/env perl6

module ScriptedMain {
  sub meaning_of_life is export {
    return 42;
  }
}

sub MAIN {
  import ScriptedMain;
  print "Main: The meaning of life is " ~ meaning_of_life() ~ "\n";
}
