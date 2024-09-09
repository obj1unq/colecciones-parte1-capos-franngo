object rolando {

    const property mochila = #{} //conjunto vacío, que es un colaborador interno (solo rolando le manda mensajes y nadie más)
                        //es const porque LA REFERENCIA es constante. Lo que puede llegar a variar es el objeto, pero NO la refe.
    var property capacidad = 2;
    var property hogar = castillo
    const property historial = []


    //estaría mal conceptualmente añadir elementos a la mochila de la forma rolando.mochila.add(x), ya que 
    //el manejo de la mochila debería estar a cargo de rolando (o sea, que se de a través de métodos de él)
    method encontrar(artefacto) {
        if(mochila.size() < capacidad) { //size da el tamaño de la colección
            mochila.add(artefacto) //se añade SOLO SI tiene capacidad suficiente
        }
        historial.add(artefacto) //se añade lo agarre o no rolando
    }

    method irAHogar() {
        hogar.almacenar(mochila)
        mochila.clear() //método de colecciones que borra todos sus elementos
    }

    method posesiones() {
        return mochila + hogar.cofre() //el más acá concatena las dos colecciones y retorna una colección
        //const posesiones = #{}
        //posesiones.addAll(mochila)
        //posesiones.addAll(castillo.cofre())
        //return posesiones
    }
    //no es buena idea que sea un atributo, ya que se pude calcular con postcálculo.

    method posee(artefacto) {
        return self.posesiones().contains(artefacto)
    }

    method artefactoEnHistorial(numero) {
       return historial.get(numero)
    }

}

//coleccion.contains(elemento)

//elementos

object espada {

}

object libro {

}

object collar {

}

object armadura {

}

//lugares

object castillo {

    const property cofre = #{}

    method almacenar(artefactos) { //colección com parámetro
        cofre.addAll(artefactos) //addAll añade todos los elementos de una colección a otra colección. add solo añade el elemnto pasado
                                 //a dicha colección
    }

}

//dos listas distintas NO son iguales
//[...] == [...] es falso
//dos conjuntos distintos SÍ son iguales
//#{...} == #{...} es true