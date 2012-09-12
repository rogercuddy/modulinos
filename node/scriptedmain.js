#!/usr/bin/env node
/*jslint nodejs:true */

function meaningOfLife() { return 42; }

exports.meaningOfLife = meaningOfLife;

function main() {
	console.log("Main: The meaning of life is " + meaningOfLife());
}

if (!module.parent) { main(); }