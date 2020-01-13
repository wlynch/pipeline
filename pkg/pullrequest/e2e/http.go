package main

import (
	"log"
	"net/http"
)

func main() {
	handler := http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		log.Printf("%s %s %s\n", r.RemoteAddr, r.Method, r.URL)
		http.FileServer(http.Dir("httpdata")).ServeHTTP(w, r)
	})
	http.Handle("/", handler)
	log.Fatal(http.ListenAndServe(":8080", nil))
}
