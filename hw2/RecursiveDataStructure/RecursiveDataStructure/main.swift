//
//  main.swift
//  RecursiveDataStructure
//
//  Created by Andrii Trybushnyi on 02.10.2024.
//

import Foundation

print("Hello, World!")



let node1 = Node(value: 1) // values is just an example to show that nodes are different
let node2 = Node(value: 2)
let node3 = Node(value: 3)

print(CFGetRetainCount(node2))

node1.addNeighbor(node: node2)
node2.addNeighbor(node: node3)
node3.addNeighbor(node: node1)

print(CFGetRetainCount(node2))
// adding node 2 as a neigbour does not increases number of owners for it

node1.addChild(child: node2)

print(CFGetRetainCount(node2))
// adding node 2 as a child does increases number of owners for it

