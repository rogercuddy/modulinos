#!/usr/bin/env octave -qf

function y = meaningoflife()
    y = 42;
endfunction

function main()
    disp("Main: The meaning of life is ");
    disp(meaningoflife());
endfunction

main();
