#!/usr/bin/Rscript

getProgram <- function(args) {
	sub("--file=", "", args[grep("--file=", args)])
}

main <- function(program, args) {
	cat("Directory: ", getwd(), "\n")

	cat("Program: ", program, "\n")

	cat("Number of Args: ", length(args), "\n")

	for (arg in args) {
		cat("Arg: ", arg, "\n")
	}
}

args <- commandArgs(trailingOnly = FALSE)
program <- getProgram(args)

if (length(program) > 0 && length(grep("scriptedmain", program)) > 0) {
	main(program, args)
}

q("no")