":";exec lein exec $0
":";exit

(ns scriptedmain
  (:gen-class))

(defn meaning-of-life [] 42)

(defn -main [& args]
  (println "Main: The meaning of life is" (meaning-of-life)))

(when (.contains (first *command-line-args*) *source-path*)
  (-main (rest *command-line-args*)))
