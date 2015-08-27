import XCTest

class AlertViewBotDemoUITests: XCTestCase {
  
  func testExample() {
    continueAfterFailure = false
    let app = XCUIApplication()
    app.launch()
    app.buttons["Open alert"].tap()
    let collectionViewsQuery = app.alerts["Email"].collectionViews
    collectionViewsQuery.textFields["Email"].typeText("john@marketplacer.com")
    collectionViewsQuery.buttons["OK"].tap()    
  }
}
