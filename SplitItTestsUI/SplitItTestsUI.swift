//
//  SplitItTestsUI.swift
//  SplitItTestsUI
//
//  Created by Jalysa Turner on 1/28/26.
//

import XCTest

final class SplitItTestsUI: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    @MainActor
    func testExample() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        app/*@START_MENU_TOKEN@*/.textFields["Amount: "]/*[[".otherElements",".textFields[\"$0.00\"]",".textFields[\"Amount: \"]",".textFields"],[[[-1,2],[-1,1],[-1,3],[-1,0,1]],[[-1,2],[-1,1]]],[0]]@END_MENU_TOKEN@*/.firstMatch.tap()
        app/*@START_MENU_TOKEN@*/.staticTexts["Select a tip percentage"]/*[[".otherElements.staticTexts[\"Select a tip percentage\"]",".staticTexts[\"Select a tip percentage\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.firstMatch.tap()
        app.cells/*@START_MENU_TOKEN@*/.containing(.segmentedControl, identifier: nil).firstMatch/*[[".element(boundBy: 2)",".containing(.button, identifier: \"15%\").firstMatch",".containing(.button, identifier: \"10%\").firstMatch",".containing(.segmentedControl, identifier: nil).firstMatch"],[[[-1,3],[-1,2],[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app/*@START_MENU_TOKEN@*/.buttons["10%"]/*[[".segmentedControls.buttons[\"10%\"]",".buttons[\"10%\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.firstMatch.tap()
        app/*@START_MENU_TOKEN@*/.buttons["15%"]/*[[".segmentedControls.buttons[\"15%\"]",".buttons[\"15%\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.firstMatch.tap()
        app/*@START_MENU_TOKEN@*/.buttons["20%"]/*[[".segmentedControls.buttons[\"20%\"]",".buttons[\"20%\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.firstMatch.tap()
        app/*@START_MENU_TOKEN@*/.buttons["25%"]/*[[".segmentedControls.buttons[\"25%\"]",".buttons[\"25%\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.firstMatch.tap()
        app/*@START_MENU_TOKEN@*/.buttons["30%"]/*[[".segmentedControls.buttons[\"30%\"]",".buttons[\"30%\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.firstMatch.tap()
        app/*@START_MENU_TOKEN@*/.buttons["Number of People, 4 People"]/*[[".buttons.containing(.staticText, identifier: \"4 People\")",".otherElements.buttons[\"Number of People, 4 People\"]",".buttons[\"Number of People, 4 People\"]"],[[[-1,2],[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.firstMatch.tap()
        app.windows/*@START_MENU_TOKEN@*/.containing(.keyboard, identifier: nil).firstMatch/*[[".element(boundBy: 2)",".containing(.button, identifier: \"dictation\").firstMatch",".containing(.button, identifier: \"Emoji\").firstMatch",".containing(.keyboard, identifier: nil).firstMatch"],[[[-1,3],[-1,2],[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()

        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
    }

    @MainActor
    func testLaunchPerformance() throws {
        // This measures how long it takes to launch your application.
        measure(metrics: [XCTApplicationLaunchMetric()]) {
            XCUIApplication().launch()
        }
    }
}
