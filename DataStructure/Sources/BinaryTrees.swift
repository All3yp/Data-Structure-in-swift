//
//  BinaryTrees.swift
//  DataStructure
//
//  Created by Alley Pereira on 14/04/21.
//

import Foundation

class BinaryNode<Element> {
	var value: Element
	var leftChild: BinaryNode?
	var rightChild: BinaryNode?

	init(value: Element) {
		self.value = value
	}
}

extension BinaryNode {
	func traverseInOrder(visit: (Element) -> Void) {
		leftChild?.traverseInOrder(visit: visit)
		visit(value)
		rightChild?.traverseInOrder(visit: visit)
	}

	func traversePreOrder(visit: (Element) -> Void) {
		visit(value)
		leftChild?.traversePreOrder(visit: visit)
		rightChild?.traversePreOrder(visit: visit)
	}

	func traversePostOrder(visit: (Element) -> Void) {
		leftChild?.traversePostOrder(visit: visit)
		rightChild?.traversePostOrder(visit: visit)
		visit(value)
	}
}

extension BinaryNode: CustomStringConvertible {

  public var description: String {
	diagram(for: self)
  }

  private func diagram(for node: BinaryNode?,
					   _ top: String = "",
					   _ root: String = "",
					   _ bottom: String = "") -> String {
	guard let node = node else {
	  return root + "nil\n"
	}
	if node.leftChild == nil && node.rightChild == nil {
	  return root + "\(node.value)\n"
	}
	return diagram(for: node.rightChild, top + " ", top + "┌──", top + "│ ")
	  + root + "\(node.value)\n"
	  + diagram(for: node.leftChild, bottom + "│ ", bottom + "└──", bottom + " ")
  }
}
