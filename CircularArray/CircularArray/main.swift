//
//  main.swift
//  CircularArray
//
//  Created by Andrii Trybushnyi on 02.10.2024.
//

import Foundation

print("Hello, World!")

var stringArray = CircularArray(initArray: ["1", "2", "3", "4"])

print( stringArray.getByIndex(index: -1) )// last
print( stringArray.getByIndex(index: 24) )// 24%4 = 0 -> first
print( stringArray.getByIndex(index: 23) )
stringArray.remove(index: 23) // 23%4 = 3 -> 4th element removed
print(stringArray.show())

//same for int/any other arrray
var intArray = CircularArray(initArray: [1, 2, 3])

print( stringArray.getByIndex(index: -1) )
print( stringArray.getByIndex(index: 12) )
print( stringArray.getByIndex(index: 22) )
stringArray.remove(index: 12)
print(stringArray.show())
