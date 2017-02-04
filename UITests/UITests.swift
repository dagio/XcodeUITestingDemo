import XCTest

class UITests: XCTestCase {
    override func setUp() {
        super.setUp()

        continueAfterFailure = false
    }

    func test1() {
        runtTheTest()
    }

    func test2() {
        runtTheTest()
    }

    func test3() {
        runtTheTest()
    }

    func test4() {
        runtTheTest()
    }

    func test5() {
        runtTheTest()
    }

    func test6() {
        runtTheTest()
    }

    func test7() {
        runtTheTest()
    }

    func test8() {
        runtTheTest()
    }

    func test9() {
        runtTheTest()
    }

    func test10() {
        runtTheTest()
    }

    func test11() {
        runtTheTest()
    }

    func test12() {
        runtTheTest()
    }

    func test13() {
        runtTheTest()
    }

    func test14() {
        runtTheTest()
    }

    func test15() {
        runtTheTest()
    }

    func test16() {
        runtTheTest()
    }

    func test17() {
        runtTheTest()
    }

    func test18() {
        runtTheTest()
    }

    func test19() {
        runtTheTest()
    }

    func test20() {
        runtTheTest()
    }

    func test21() {
        runtTheTest()
    }

    func test22() {
        runtTheTest()
    }

    func test23() {
        runtTheTest()
    }

    func test24() {
        runtTheTest()
    }

    func test25() {
        runtTheTest()
    }

    func test26() {
        runtTheTest()
    }

    func test27() {
        runtTheTest()
    }

    func test28() {
        runtTheTest()
    }

    func test29() {
        runtTheTest()
    }

    func test30() {
        runtTheTest()
    }

    func test31() {
        runtTheTest()
    }

    func test32() {
        runtTheTest()
    }

    func test33() {
        runtTheTest()
    }

    func test34() {
        runtTheTest()
    }

    func test35() {
        runtTheTest()
    }

    func test36() {
        runtTheTest()
    }

    func test37() {
        runtTheTest()
    }

    func test38() {
        runtTheTest()
    }

    func test39() {
        runtTheTest()
    }

    func test40() {
        runtTheTest()
    }

    func test41() {
        runtTheTest()
    }

    func test42() {
        runtTheTest()
    }

    func test43() {
        runtTheTest()
    }

    func test44() {
        runtTheTest()
    }

    func test45() {
        runtTheTest()
    }

    func test46() {
        runtTheTest()
    }

    func test47() {
        runtTheTest()
    }

    func test48() {
        runtTheTest()
    }

    func test49() {
        runtTheTest()
    }

    func test50() {
        runtTheTest()
    }

    func test51() {
        runtTheTest()
    }

    func test52() {
        runtTheTest()
    }

    func test53() {
        runtTheTest()
    }

    func test54() {
        runtTheTest()
    }

    func test55() {
        runtTheTest()
    }

    func test56() {
        runtTheTest()
    }

    func test57() {
        runtTheTest()
    }

    func test58() {
        runtTheTest()
    }

    func test59() {
        runtTheTest()
    }

    func test60() {
        runtTheTest()
    }

    func test61() {
        runtTheTest()
    }

    func test62() {
        runtTheTest()
    }

    func test63() {
        runtTheTest()
    }

    func test64() {
        runtTheTest()
    }

    func test65() {
        runtTheTest()
    }

    func test66() {
        runtTheTest()
    }

    func test67() {
        runtTheTest()
    }

    func test68() {
        runtTheTest()
    }

    func test69() {
        runtTheTest()
    }

    func test70() {
        runtTheTest()
    }

    func test71() {
        runtTheTest()
    }

    func test72() {
        runtTheTest()
    }

    func test73() {
        runtTheTest()
    }

    func test74() {
        runtTheTest()
    }

    func test75() {
        runtTheTest()
    }

    func test76() {
        runtTheTest()
    }

    func test77() {
        runtTheTest()
    }

    func test78() {
        runtTheTest()
    }

    func test79() {
        runtTheTest()
    }

    func test80() {
        runtTheTest()
    }

    func test81() {
        runtTheTest()
    }

    func test82() {
        runtTheTest()
    }

    func test83() {
        runtTheTest()
    }

    func test84() {
        runtTheTest()
    }

    func test85() {
        runtTheTest()
    }

    func test86() {
        runtTheTest()
    }

    func test87() {
        runtTheTest()
    }

    func test88() {
        runtTheTest()
    }

    func test89() {
        runtTheTest()
    }

    func test90() {
        runtTheTest()
    }

    func test91() {
        runtTheTest()
    }
    
    func test92() {
        runtTheTest()
    }
    
    func test93() {
        runtTheTest()
    }
    
    func test94() {
        runtTheTest()
    }
    
    func test95() {
        runtTheTest()
    }
    
    func test96() {
        runtTheTest()
    }
    
    func test97() {
        runtTheTest()
    }
    
    func test98() {
        runtTheTest()
    }
    
    func test99() {
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

        app.textFields.element.clearAndEnterText(text: "This is a long string")

        app.navigationBars["Project."].buttons["Add"].tap()
        app.alerts["Hello"].buttons["Yes"].tap()
        XCTAssertTrue(app.otherElements["Background"].exists)
        
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
