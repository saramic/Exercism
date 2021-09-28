(ns hello-world)

(defn hello [& name] ;; <- arglist goes here
  (str "Hello, " (if name (first name) "World") "!")
)
