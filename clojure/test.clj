":";exec lein exec $0 ${1+"$@"}

(ns test
  (:gen-class))

(load-string (slurp "modulino.clj"))

(defn -main [& args]
  (println "Test: The meaning of life is" (modulino/meaning-of-life)))

(when (.contains (first *command-line-args*) *source-path*)
  (apply -main (rest *command-line-args*)))
