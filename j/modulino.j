#!/usr/bin/env jconsole

load 'regex'

meaningOfLife =: 42

main =: monad : 0
  echo 'Main: The meaning of life is ', > 'd' (8!:0) meaningOfLife
  exit ''
)

program =: monad : 0
  if. (#ARGV) > 1 do.
    > 1 { ARGV
  else.
    'Interpreted'
  end.
)

shouldrun =: monad : 0
  if. '.*modulino.*' rxeq program 0 do.
    main 0
  end.
)

shouldrun 0
