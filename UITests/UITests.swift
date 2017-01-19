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
            app.textFields.element.clearAndEnterText(text: "This is a long string")

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

extension XCUIElement {
    /**
     Removes any current text in the field before typing in the new value
     - Parameter text: the text to enter into the field
     */
    func clearAndEnterText(text: String) -> Void {
        guard let stringValue = self.value as? String else {
            XCTFail("Tried to clear and enter text into a non string value")
            return
        }

        self.tap()

        let deleteString = stringValue.characters.map { _ in XCUIKeyboardKeyDelete }.joined(separator: "")

        self.typeText(deleteString)
        self.typeText(text)
    }
}
