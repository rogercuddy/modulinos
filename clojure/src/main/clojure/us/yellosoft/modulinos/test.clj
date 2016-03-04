(ns us.yellosoft.modulinos.Test
  (:gen-class))

(require '[us.yellosoft.modulinos.Modulino :as Modulino])

(defn -main [& args]
  (println "Test: The meaning of life is" (Modulino/meaning-of-life)))
