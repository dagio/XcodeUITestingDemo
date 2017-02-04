import XCTest

class UITests: XCTestCase {
    override func setUp() {
        super.setUp()

        continueAfterFailure = false
    }

    func test001() {
        runtTheTest()
    }

    func test002() {
        runtTheTest()
    }

    func test003() {
        runtTheTest()
    }

    func test004() {
        runtTheTest()
    }

    func test005() {
        runtTheTest()
    }

    func test006() {
        runtTheTest()
    }

    func test007() {
        runtTheTest()
    }

    func test008() {
        runtTheTest()
    }

    func test009() {
        runtTheTest()
    }

    func test010() {
        runtTheTest()
    }

    func test011() {
        runtTheTest()
    }

    func test012() {
        runtTheTest()
    }

    func test013() {
        runtTheTest()
    }

    func test014() {
        runtTheTest()
    }

    func test015() {
        runtTheTest()
    }

    func test016() {
        runtTheTest()
    }

    func test017() {
        runtTheTest()
    }

    func test018() {
        runtTheTest()
    }

    func test019() {
        runtTheTest()
    }

    func test020() {
        runtTheTest()
    }

    func test021() {
        runtTheTest()
    }

    func test022() {
        runtTheTest()
    }

    func test023() {
        runtTheTest()
    }

    func test024() {
        runtTheTest()
    }

    func test025() {
        runtTheTest()
    }

    func test026() {
        runtTheTest()
    }

    func test027() {
        runtTheTest()
    }

    func test028() {
        runtTheTest()
    }

    func test029() {
        runtTheTest()
    }

    func test030() {
        runtTheTest()
    }

    func test031() {
        runtTheTest()
    }

    func test032() {
        runtTheTest()
    }

    func test033() {
        runtTheTest()
    }

    func test034() {
        runtTheTest()
    }

    func test035() {
        runtTheTest()
    }

    func test036() {
        runtTheTest()
    }

    func test037() {
        runtTheTest()
    }

    func test038() {
        runtTheTest()
    }

    func test039() {
        runtTheTest()
    }

    func test040() {
        runtTheTest()
    }

    func test041() {
        runtTheTest()
    }

    func test042() {
        runtTheTest()
    }

    func test043() {
        runtTheTest()
    }

    func test044() {
        runtTheTest()
    }

    func test045() {
        runtTheTest()
    }

    func test046() {
        runtTheTest()
    }

    func test047() {
        runtTheTest()
    }

    func test048() {
        runtTheTest()
    }

    func test049() {
        runtTheTest()
    }

    func test050() {
        runtTheTest()
    }

    func test051() {
        runtTheTest()
    }

    func test052() {
        runtTheTest()
    }

    func test053() {
        runtTheTest()
    }

    func test054() {
        runtTheTest()
    }

    func test055() {
        runtTheTest()
    }

    func test056() {
        runtTheTest()
    }

    func test057() {
        runtTheTest()
    }

    func test058() {
        runtTheTest()
    }

    func test059() {
        runtTheTest()
    }

    func test060() {
        runtTheTest()
    }

    func test061() {
        runtTheTest()
    }

    func test062() {
        runtTheTest()
    }

    func test063() {
        runtTheTest()
    }

    func test064() {
        runtTheTest()
    }

    func test065() {
        runtTheTest()
    }

    func test066() {
        runtTheTest()
    }

    func test067() {
        runtTheTest()
    }

    func test068() {
        runtTheTest()
    }

    func test069() {
        runtTheTest()
    }

    func test070() {
        runtTheTest()
    }

    func test071() {
        runtTheTest()
    }

    func test072() {
        runtTheTest()
    }

    func test073() {
        runtTheTest()
    }

    func test074() {
        runtTheTest()
    }

    func test075() {
        runtTheTest()
    }

    func test076() {
        runtTheTest()
    }

    func test077() {
        runtTheTest()
    }

    func test078() {
        runtTheTest()
    }

    func test079() {
        runtTheTest()
    }

    func test080() {
        runtTheTest()
    }

    func test081() {
        runtTheTest()
    }

    func test082() {
        runtTheTest()
    }

    func test083() {
        runtTheTest()
    }

    func test084() {
        runtTheTest()
    }

    func test085() {
        runtTheTest()
    }

    func test086() {
        runtTheTest()
    }

    func test087() {
        runtTheTest()
    }

    func test088() {
        runtTheTest()
    }

    func test089() {
        runtTheTest()
    }

    func test090() {
        runtTheTest()
    }

    func test091() {
        runtTheTest()
    }
    
    func test092() {
        runtTheTest()
    }
    
    func test093() {
        runtTheTest()
    }
    
    func test094() {
        runtTheTest()
    }
    
    func test095() {
        runtTheTest()
    }
    
    func test096() {
        runtTheTest()
    }
    
    func test097() {
        runtTheTest()
    }
    
    func test098() {
        runtTheTest()
    }
    
    func test099() {
        runtTheTest()
    }
    
    func test100() {
        runtTheTest()
    }

}

extension UITests {
    func runtTheTest() {
        let app = XCUIApplication()
        app.launch()

        // Instead... do nothing

//        app.textFields.element.clearAndEnterText(text: "This is a long string")
//        app.navigationBars["Project."].buttons["Add"].tap()
//        app.alerts["Hello"].buttons["Yes"].tap()
//        XCTAssertTrue(app.otherElements["Background"].exists)

        app.terminate()
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
