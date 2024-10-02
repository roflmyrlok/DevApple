//
//  main.swift
//  hw1
//
//  Created by Andrii Trybushnyi on 01.10.2024.
//

import Foundation

print("Hello, World!")

func generateRandomArray(count: Int, min: Int, max: Int) -> [Int] {
    return (0..<count).map { _ in Int.random(in: min...max) }
}

func gnomeSort(inputArray: [Int])-> [Int]{
    var array = inputArray
    var pos = 0
    while pos < array.count {
        if (pos == 0 || array[pos] >= array[pos-1]){
            pos = pos + 1}
        else{
            let tmp = array[pos-1]
            array[pos-1] = array[pos]
            array[pos] = tmp
            pos = pos - 1
        }
    }
    return array;
}


let randomArray = generateRandomArray(count: 10000, min: Int.min, max: Int.max)

let clock = ContinuousClock()

let resultGnom = clock.measure {
    let sortedArray = gnomeSort(inputArray: randomArray)
}

let resultBuiltIn = clock.measure {
    let sortedArray = randomArray.sorted()
}


print("resultGnom: " + resultGnom.description)
print("resultBuiltIn: " + resultBuiltIn.description)


/*Hello, World!
 
 for 100000
 resultGnom: 295.836618083 seconds
 resultBuiltIn: 0.203490667 seconds
 
 Yah, I've been sitting here for 5 minutes due to a typo from 10k to 100k.
 All this is due to different algorithms used for sorting. Gnom sort is O(n^2), while the built-in function uses some better algorithm.
 
 Here for 10000
 resultGnom: 2.963736625 seconds
 resultBuiltIn: 0.016637709 seconds
 
 */
