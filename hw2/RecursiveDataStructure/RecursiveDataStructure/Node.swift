//
//  Node.swift
//  RecursiveDataStructure
//
//  Created by Andrii Trybushnyi on 02.10.2024.
//

import Foundation

class Node<T>{
    var value: T
    var children: [Node]
    var neighbors: [Weak<Node>]
    var count: Int{
        1 + children.reduce(0,{$0 + $1.count})
    }
    
    init(value: T) {
        self.value = value
        self.children = []
        self.neighbors = []
    }
    
    init(value: T, children: [Node]){
        self.value = value
        self.children = children
        self.neighbors = []
    }
    
     func addChild(child: Node){
        children.append(child)
    }
    
    func addNeighbor(node: Node){
        neighbors.append(Weak(value: node))
    }
    
    
}

class Weak<T: AnyObject> {
  weak var value: T?
  init(value: T) {
    self.value = value
  }
}
