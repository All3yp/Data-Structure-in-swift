//
//  BinarySearchTestCase.swift
//  DataStructureTests
//
//  Created by Alley Pereira on 15/04/21.
//

import XCTest
@testable import DataStructure

final class BinarySearchTestCase: XCTestCase {

    func test_binarySearch() {
        let array = [1, 5, 18, 32, 33, 40, 48, 65, 213, 3826]

        XCTAssertEqual(array.binarySearch(for: 33), 4)
    }
}
