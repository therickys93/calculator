import XCTest
@testable import Calculator

class OperationsTests: XCTestCase {

    override func setUp() {
		super.setUp()
	}

    func testRawSymbols() {
        XCTAssertEqual("+", Operations.Plus.rawValue)
        XCTAssertEqual("-", Operations.Minus.rawValue)
        XCTAssertEqual("*", Operations.Multiply.rawValue)
        XCTAssertEqual("/", Operations.Divider.rawValue)
    }

	func testAllValues() {
		XCTAssertEqual([Operations.Plus, Operations.Minus, Operations.Multiply, Operations.Divider], Operations.AllValues)
	}
}

extension OperationsTests {
	static var allTests: [(String, (OperationsTests) -> () throws -> Void)] {
		return [
			("testRawSymbols", testRawSymbols),
			("testAllValues", testAllValues)
		]
	}
}
