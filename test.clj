":";exec clj -m `basename $0 .clj` ${1+"$@"}
":";exit

(ns test
	(:gen-class))

(load "scriptedmain")

(defn -main [& args]
	(println "Test: The meaning of life is" (scriptedmain/meaning-of-life)))