import XCTest

class UITests: XCTestCase {
    override func setUp() {
        super.setUp()

        continueAfterFailure = false
        XCUIApplication().launch()
    }

    func testTappingYes() {
        let app = XCUIApplication()
        for _ in 1...10 {
            app.navigationBars["Project."].buttons["Add"].tap()
            app.alerts["Hello"].buttons["Yes"].tap()
            XCTAssertTrue(app.otherElements["Background"].exists)
        }
    }

    func testTappingYesCopy() {
        let app = XCUIApplication()
        for _ in 1...10 {
            app.navigationBars["Project."].buttons["Add"].tap()
            app.alerts["Hello"].buttons["Yes"].tap()
            XCTAssertTrue(app.otherElements["Background"].exists)
        }
    }

    func testTappingYesCopyCopy() {
        let app = XCUIApplication()
        for _ in 1...10 {
            app.navigationBars["Project."].buttons["Add"].tap()
            app.alerts["Hello"].buttons["Yes"].tap()
            XCTAssertTrue(app.otherElements["Background"].exists)
        }
    }

    func testTappingYesCopyCopyCopy() {
        let app = XCUIApplication()
        for _ in 1...10 {
            app.navigationBars["Project."].buttons["Add"].tap()
            app.alerts["Hello"].buttons["Yes"].tap()
            XCTAssertTrue(app.otherElements["Background"].exists)
        }
    }
}
