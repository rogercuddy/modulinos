":";exec lein exec $0
":";exit

(ns test
  (:gen-class))

(load-string (slurp "scriptedmain.clj"))

(defn -main [& args]
  (println "Test: The meaning of life is" (scriptedmain/meaning-of-life)))

(when (.contains (first *command-line-args*) *source-path*)
  (-main (rest *command-line-args*)))
