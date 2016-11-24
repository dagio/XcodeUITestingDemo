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

    func testFailing() {
        let app = XCUIApplication()
        app.navigationBars["XcodeUITestingFail."].buttons["Add"].tap()
        app.alerts["Hello"].buttons["Yes"].tap()
        XCTAssertTrue(app.otherElements["Background"].exists)
    }

    func testWorking() {
        let app = XCUIApplication()

        let delayView1 = app.otherElements["Delay 1"]
        self.waitForElementToAppear(delayView1)

        app.navigationBars["XcodeUITestingFail."].buttons["Add"].tap()

        let alert = app.alerts["Hello"]
        self.waitForElementToAppear(alert)

        alert.buttons["Yes"].tap()

        let delayView2 = app.otherElements["Delay 2"]
        self.waitForElementToAppear(delayView2)

        self.waitForElementToAppear(app.otherElements["Background"])
    }
}

extension XCTestCase {
    func waitForElementToAppear(_ element: XCUIElement) {
        let timeout: TimeInterval = 5
        let existsPredicate = NSPredicate(format: "exists == true")
        expectation(for: existsPredicate, evaluatedWith: element, handler: nil)
        waitForExpectations(timeout: timeout) { error in
            if error != nil {
                let message = "Failed to find \(element) after \(timeout) seconds."
                self.recordFailure(withDescription: message, inFile: #file, atLine: #line, expected: true)
            }
        }
    }
}
