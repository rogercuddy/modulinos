(ns us.yellosoft.modulinos.Modulino
  (:gen-class))

(defn meaning-of-life [] 42)

(defn -main [& args]
  (println "Main: The meaning of life is" (meaning-of-life)))
