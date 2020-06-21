#!/usr/bin/awk -f

BEGIN {
  FS="|" 
}

function conseguir_siguiente_jugada() {
    numero = int(3 * rand())
    if (numero < 1) return "paper"
    else if (numero < 2) return "scissors"
    else return "rock"
}

$1 == "start" {
    srand($3)
    print conseguir_siguiente_jugada()
}

$1 == "update" {
    print conseguir_siguiente_jugada()
}
