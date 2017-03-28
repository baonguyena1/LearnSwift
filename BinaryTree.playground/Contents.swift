//: Playground - noun: a place where people can play

import UIKit

//          11
//         /  \
//       10    15
//      / \   /  \
//     1   5 12  20

class Node {
    let value: Int!
    var leftChild: Node?
    var rightChild: Node?
    
    init(value: Int, leftChild: Node?, rightChild: Node?) {
        self.value = value
        self.leftChild = leftChild
        self.rightChild = rightChild
    }
}

// Left branch
var oneNode = Node(value: 1, leftChild: nil, rightChild: nil)
var fiveNode = Node(value: 5, leftChild: nil, rightChild: nil)
var tenNode = Node(value: 10, leftChild: oneNode, rightChild: fiveNode)

// Right branch
var twelveNode = Node(value: 12, leftChild: nil, rightChild: nil)
var twentyNode = Node(value: 20, leftChild: nil, rightChild: nil)
var fifteenNode = Node(value: 15, leftChild: twelveNode, rightChild: twentyNode)

var elevenNode = Node(value: 11, leftChild: tenNode, rightChild: fifteenNode)

func search(value: Int, node: Node?) -> Bool {
    if node == nil {
        return false
    }
    if node!.value == value {
        return true
    } else if node!.value < value {
        return search(value: value, node: node?.rightChild)
    } else {
        return search(value: value, node: node?.leftChild)
    }
}

search(value: 20, node: elevenNode)

