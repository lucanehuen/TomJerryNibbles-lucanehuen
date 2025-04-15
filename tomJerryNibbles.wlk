object tom {
    var energia = 50
    var ultRatonComido = null

    method energia() {
        return energia
    }

    method energiaPerdida(metros) {
        return metros /2
    }

    method correr(metros) {
        energia -= self.energiaPerdida(metros)
    }

    method comer(raton) {
        energia += 12 + raton.peso()
        ultRatonComido = raton
        juan.comerSobras(raton)
    }

    method velocidadMaxima() {
        return 5 + energia /10
    }

    method puedeCazar(distancia) {
        return self.energiaPerdida(distancia) <= energia
    }

    method cazar(raton, distancia) {
        if (self.puedeCazar(distancia)) {
            self.comer(raton)
        }
    }
}

object jerry {
  var edad = 2
  method cumplirAnios() {
    edad += 1
  }
  method peso() {
    return edad * 20
  }
}

object nibbles {
  method peso() {
    return 35
  }
}

// Inventar otro ratón

object juan {
    var peso = 5
    method comerSobras(raton) {
        peso += raton.peso() / 5
    }
    method peso() {
        return peso
    }
}