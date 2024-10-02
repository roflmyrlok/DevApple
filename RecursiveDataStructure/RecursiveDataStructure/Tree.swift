//
//  Tree.swift
//  RecursiveDataStructure
//
//  Created by Andrii Trybushnyi on 02.10.2024.
//

import Foundation

struct Tree<T: Equatable>{
    var root: Node<T>
    
    init(rootValue: T) {
        self.root = Node(value: rootValue)
    }
    
    func getTreeDepth( ) -> Int{
        return root.count
    }
    
    func getByValue(value: T) -> Node<T>? {
           var stack: [Node<T>] = [root]
           
           while !stack.isEmpty {
               let currentNode = stack.removeLast()
               if currentNode.value == value {
                   return currentNode
               }
               for child in currentNode.children {
                   stack.append(child)
               }
           }
           return nil
       }
}
