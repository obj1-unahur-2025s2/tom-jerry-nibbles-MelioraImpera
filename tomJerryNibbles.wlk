object tom {
    var energia = 50
    
    method velocidadMaxima() = 5 + energia / 10
    method correr(distancia) {
        energia = energia - distancia / 2
    }
    method comer(unRaton) {
        energia = energia + 12 + unRaton.peso()
    }
    method energia() = energia
    method puedeCorrer(distancia) = energia >= (distancia / 2)
    method cazar(unRaton, distancia) {
        if(self.puedeCorrer(distancia)) {
            self.correr(distancia)
            self.comer(unRaton)
        }
    }
}

object jerry {
  var edad = 2

  method cumplirAnios() {
      edad = edad + 1
  }
  method peso() = edad * 20
}

object nibbles {
  method peso() = 35
}

// Inventar otro ratón
object carlitos {
  method peso() = 60
}