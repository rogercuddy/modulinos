"use strict";

module.exports = function(grunt) {
  grunt.initConfig({
		exec: {
			test: "npm test",

      jshint: "node_modules/jshint/bin/jshint .",
		}
  });

  grunt.loadNpmTasks("grunt-exec");

  grunt.registerTask("default", ["exec:test"]);
  grunt.registerTask("test", ["exec:test"]);

  grunt.registerTask("lint", [
    "exec:jshint"
  ]);

  grunt.registerTask("jshint", ["exec:jshint"]);
};
