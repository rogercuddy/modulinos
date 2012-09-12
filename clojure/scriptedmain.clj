":";exec clj -m `basename $0 .clj` $0 ${1+"$@"}
":";exit

; Load:
;
; clj scriptedmain.clj
;
; Interpret:
;
; ./scriptedmain.clj
; clj -m scriptedmain
;
; Compile:
;
; clj
; => (set! *compile-path* ".")
; => (compile 'scriptedmain)
;
; Run:
;
; java -cp ~/path/to/clojure.jar:. scriptedmain

(ns scriptedmain
	(:gen-class))

(defn meaning-of-life [] 42)

(defn -main [& args]
	(println "Main: The meaning of life is" (meaning-of-life)))