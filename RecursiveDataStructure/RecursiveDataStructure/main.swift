//
//  main.swift
//  RecursiveDataStructure
//
//  Created by Andrii Trybushnyi on 02.10.2024.
//

import Foundation

print("Hello, World!")

var tree = Tree(rootValue: "root")

var firstChild = Node(value: "1-layer children 1",
                      children: [
                          Node(value: "2-layer child 1", children: []),
                          Node(value: "2-layer child 2", children: [
                                Node(value: "3-layer child 1")])
                      ])

tree.root.addChild(child: firstChild)

if let l2c2 = tree.getByValue(value: "2-layer child 2") {
    print("l2c2 found")
    print(l2c2)
}
print("   ")

print(tree.getByValue(value: "childToSearch"))
print("   ")
print(tree.getTreeDepth())

