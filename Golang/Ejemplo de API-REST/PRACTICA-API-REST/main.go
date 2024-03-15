package main

import (
	"net/http"

	"github.com/gorilla/mux"

	//Cada archivo es un paquete, asi importamos paqueteslocales
	"github.com/Cesar-CCS/PRACTICA-API-REST/db"
	"github.com/Cesar-CCS/PRACTICA-API-REST/routes"
)

func main() {

	db.DBConection()

	//r nos ayudara a agrupar multiples rutas
	//Este es el servidor
	r := mux.NewRouter()

	//Funcion de la ruta
	r.HandleFunc("/", routes.HomeHandler)

	//Inicializando el servidor
	http.ListenAndServe(":3000", r)
}
