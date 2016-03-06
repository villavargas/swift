//: Playground - noun: a place where people can play
// tarea 1
import Cocoa

// constante para saber si es divisible entre 5
let divisible_5 = 5
// variable para obtener el residui del numero x
var residuo = 0

// Se intera del 0 al 100
for ( var x = 0; x <= 100; x++){
    
    // Si el residuo de X es igual a 0, es divisible entre 5
    if x % divisible_5 == 0{
        print("\(x)  + “Bingo!!!")
    }
    // Si el residuo es igual a 0, es un numero par
    residuo = x % 2
    if residuo == 0{
        print("\(x) + par!!!")
    }else{  // Si el residuo es diferente de 0, es un numero impar
        print("\(x) + impar!!!")
    }
    // Si x, es mayor de 30 y menor de 40, imprime el valor
    if x >= 30 && x <= 40{
        print("\(x) +  “Viva Swift!!!”")
    }
    
} 

