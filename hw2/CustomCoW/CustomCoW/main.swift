//
//  main.swift
//  CustomCoW
//
//  Created by Andrii Trybushnyi on 16.10.2024.
//

import Foundation

class Ref {
    var value: [Int]
    init(_ v: [Int]) { value = v }
}

struct MyData {
    private var ref: Ref
    
    init(_ x: [Int]) {
        ref = Ref(x)
    }
    
    var internalArray: [Int] {
        get { return ref.value }
        set {
            if !isKnownUniquelyReferenced(&ref) {
                ref = Ref(newValue)
            } else {
                ref.value = newValue
            }
        }
    }
}

func printAddress(address o: UnsafeRawPointer) {
    print(String(format: "%p", Int(bitPattern: o)))
}

var mydata1 = MyData([0, 2, 4])
var mydata2 = mydata1

printAddress(address: &mydata1.internalArray)
printAddress(address: &mydata2.internalArray)

mydata2.internalArray[0] = 3

print("mydata1: \(mydata1.internalArray)")
print("mydata2: \(mydata2.internalArray)")

printAddress(address: &mydata1.internalArray)
printAddress(address: &mydata2.internalArray)

