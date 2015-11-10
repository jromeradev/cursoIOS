//: Playground - noun: a place where people can play

import UIKit

var rango = 0...100

for  elem in rango {
    
    if elem % 5 == 0 {
        print("# \(elem) Bingo!!!")
    }
    if elem % 2 == 0 {
        print("# \(elem) par!!!")
    }
    if elem % 2 != 0 {
        print("# \(elem) impar!!!")
    }
    
    if elem >= 30 && elem <= 40 {
        print("# \(elem) Viva Swift!!!")
    }
    
    
}


