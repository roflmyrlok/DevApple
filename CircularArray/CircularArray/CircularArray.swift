//
//  CircularArray.swift
//  CircularArray
//
//  Created by Andrii Trybushnyi on 02.10.2024.
//

import Foundation

struct CircularArray<T>{
    private var internalArray: [T]
    
    init(initArray: [T]){
        self.internalArray = initArray
    }
    
    mutating func add(element: T){
        internalArray.append(element)
    }
    
    mutating func remove(index: Int){
        guard !internalArray.isEmpty else { return }
        let tmpIndex = internalIndex(index: index)
        internalArray.remove(at: tmpIndex)
    }
    
    mutating func getByIndex(index: Int) -> T?{
        guard !internalArray.isEmpty else { return nil }
        let tmpIndex = internalIndex(index: index)
        return internalArray[tmpIndex]
    }
    
    func show( ) -> [T]{
        return internalArray
    }
    
    private func internalIndex(index: Int) -> Int {
        var tmpIndex = index;
        guard !internalArray.isEmpty else { return 0 }
        while tmpIndex < 0 {
            tmpIndex += internalArray.count
        }
        while tmpIndex >= internalArray.count{
            tmpIndex -= internalArray.count
        }
        
        //sry have no time to bother with % i procrastinated
        return tmpIndex
    }
}
