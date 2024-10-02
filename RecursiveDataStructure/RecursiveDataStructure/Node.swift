//
//  Node.swift
//  RecursiveDataStructure
//
//  Created by Andrii Trybushnyi on 02.10.2024.
//

import Foundation

struct Node<T>{
    var value: T
    var children: [Node]
    var count: Int{
        1 + children.reduce(0,{$0 + $1.count})
    }
    
    init(value: T) {
        self.value = value
        self.children = []
    }
    
    init(value: T, children: [Node]){
        self.value = value
        self.children = children
    }
    
    mutating func addChild(child: Node){
        children.append(child)
    }
    
    
}
