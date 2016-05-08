import XCTest

class UITests: XCTestCase {
    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        XCUIApplication().launch()
    }

    override func tearDown() {
        super.tearDown()
    }

    // This should work. It was recorded by Xcode
    func testFailing() {
        let app = XCUIApplication()
        app.navigationBars["XcodeUITestingFail."].buttons["Add"].tap()
        app.alerts["Hello"].collectionViews.buttons["Yes"].tap()
        XCTAssertTrue(app.otherElements["Background"].exists)
    }

    // This works but requires workarounds
    func testWorking() {
        let app = XCUIApplication()

        let delayView1 = app.otherElements["Delay 1"]
        self.waitForElementToAppear(delayView1)

        app.navigationBars["XcodeUITestingFail."].buttons["Add"].tap()

        let alert = app.alerts["Hello"]
        self.waitForElementToAppear(alert)

        alert.collectionViews.buttons["Yes"].tap()

        let delayView2 = app.otherElements["Delay 2"]
        self.waitForElementToAppear(delayView2)

        self.waitForElementToAppear(app.otherElements["Background"])
    }
}

extension XCTestCase {
    func waitForElementToAppear(element: XCUIElement) {
        let timeout: NSTimeInterval = 5
        let existsPredicate = NSPredicate(format: "exists == true")
        expectationForPredicate(existsPredicate, evaluatedWithObject: element, handler: nil)
        waitForExpectationsWithTimeout(timeout) { error in
            if error != nil {
                let message = "Failed to find \(element) after \(timeout) seconds."
                self.recordFailureWithDescription(message, inFile: #file, atLine: #line, expected: true)
            }
        }
    }
}
