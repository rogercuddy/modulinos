#!/usr/bin/env Rscript

meaningOfLife <- function() {
        42
}

main <- function(program, args) {
        cat("Main: The meaning of life is", meaningOfLife(), "\n")
}

getProgram <- function(args) {
        sub("--file=", "", args[grep("--file=", args)])
}

args <- commandArgs(trailingOnly = FALSE)
program <- getProgram(args)

if (length(program) > 0 && length(grep("scriptedmain", program)) > 0) {
        main(program, args)
        q("no")
}
