(defn cubo [x]
  (* x x x))

(def numeros [1 2 3 4 5])

(defn cubos-ordenados-decrescente [nums]
  (sort > (map cubo nums)))

(def resultado (cubos-ordenados-decrescente numeros))

(println resultado)