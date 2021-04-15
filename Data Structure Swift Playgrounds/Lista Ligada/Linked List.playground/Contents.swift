import UIKit

example(of: "creating and linking nodes 🖖🏼") {
    let node1 = Node(value: 1)
    let node2 = Node(value: 2)
    let node3 = Node(value: 3)

    node1.next = node2
    node2.next = node3

    print(node1)
}

example(of: "push") {
    var list = LinkedList<Int>()
    list.push(3)
    list.push(2)
    list.push(1)

    print(list)
}

example(of: "append") {
    var list = LinkedList<Int>()
    list.append(1)
    list.append(2)
    list.append(3)

    print(list)
}

example(of: "inserting at a particular index") {

    var list = LinkedList<Int>()

    list.push(3)
    list.push(2)
    list.push(1)

    print("Before inserting: \(list)")

    var middleNode = list.node(at: 1)!

    for _ in 1...4 {
        middleNode = list.insert(-1, after: middleNode)
    }

    print("After inserting: \(list)")
}
