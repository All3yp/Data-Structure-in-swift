//
//  Stack.swift
//  DataStructure
//
//  Created by Alley Pereira on 14/04/21.
//

import Foundation

struct Stack<Element: Equatable>: Equatable {

	init() { }

	init(_ elements: [Element]) {
		storage = elements
	}

	private var storage: [Element] = []
	var isEmpty: Bool {
		// Informar se a pilha está vazia ou não
		return peek() == nil
	}

	func peek() -> Element? {
		// Devolve o elemento que está no topo da pilha
		return storage.last
	}

	mutating func push(_ element: Element) {
		// Adiciona um novo item a pilha
		storage.append(element)
	}

	@discardableResult
	mutating func pop() -> Element? {
		// Remove um item do topo da pilha
		return storage.popLast()
	}
}

extension Stack: CustomStringConvertible {
	var description: String {
		return storage
			.map { "\($0)"}
			.joined(separator: " ")
	}
}

extension Stack: ExpressibleByArrayLiteral {
	init(arrayLiteral elements: Element...) {
		storage = elements
	}
}
