//
//  BinaryTreeTestCase.swift
//  DataStructureTests
//
//  Created by Alley Pereira on 14/04/21.
//

import XCTest
@testable import DataStructure

class BinaryTreeTestCase: XCTestCase {
	//TODO: Create a tree here! 🌳

	var tree: BinaryNode<Int> = {
		let zero = BinaryNode(value: 0)
		let one = BinaryNode(value: 1)
		let five = BinaryNode(value: 5)
		let seven = BinaryNode(value: 7)
		let eight = BinaryNode(value: 8)
		let nine = BinaryNode(value: 9)

		seven.leftChild = one
		one.leftChild = zero
		one.rightChild = five
		seven.rightChild = nine
		nine.leftChild = eight

		return seven
	}()

	func test_visualizeBinaryTree() {
		print(tree.description)
	}

	func test_traverseInOrder() {
		var testArray: [Int] = []
		tree.traverseInOrder { testArray.append($0)}
		XCTAssertEqual(testArray, [0, 1, 5, 7, 8, 9])
	}

	func test_traversePreOrder() {
		var testArray: [Int] = []
		tree.traversePreOrder { testArray.append($0)}
		XCTAssertEqual(testArray, [7, 1, 0, 5, 9, 8])
	}

	func test_traversePostOrder() {
		var testArray: [Int] = []
		tree.traversePostOrder { testArray.append($0)}
		XCTAssertEqual(testArray, [0, 5, 1, 8, 9, 7])
	}
}
