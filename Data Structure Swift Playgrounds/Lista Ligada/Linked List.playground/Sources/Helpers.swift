import Foundation

// Trailing closure syntax
public func example(of description: String, action: () -> ()) {
  print("🥞 Example of \(description) 🥞\n")
  action()
  print()
}
