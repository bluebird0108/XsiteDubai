import XCTest
@testable import XsiteDubai

final class XsiteDubaiTests: XCTestCase {
    func testContentViewTypeExists() {
        // Sanity check that the app module is visible to tests
        _ = ContentView.self
        XCTAssertTrue(true)
    }
}
