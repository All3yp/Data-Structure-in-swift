import Foundation

public struct Stack<Element> {
    private var storage: [Element] = []

    public init() {

    }

    public mutating func push(_ element: Element) {
        storage.append(element)
    }

    @discardableResult public mutating func pop() -> Element? {
        storage.popLast()
    }
}

extension Stack: CustomStringConvertible {
    public var description: String {
        """
             ----top----
             \(storage.map { "\($0)" }.reversed().joined(separator: "\n"))
             -----------
             """
    }
}
