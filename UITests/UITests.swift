import XCTest

class UITests: XCTestCase {
    override func setUp() {
        super.setUp()

        continueAfterFailure = false
        XCUIApplication().launch()
    }

    func testTappingYes() {
        let app = XCUIApplication()
        app.navigationBars["Project."].buttons["Add"].tap()
        app.alerts["Hello"].buttons["Yes"].tap()
        XCTAssertTrue(app.otherElements["Background"].exists)
    }
}
