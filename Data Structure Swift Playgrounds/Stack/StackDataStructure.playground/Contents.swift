example(of: "Using a stack") {
  var stack = Stack<Int>()
  stack.push(1)
  stack.push(2)
  stack.push(3)
  stack.push(4)

  print(stack)

  if let poppedValue = stack.pop() {
    assert(4 == poppedValue)
    print("Popped: \(poppedValue)")
  }
}
