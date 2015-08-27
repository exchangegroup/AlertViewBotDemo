import XCTest

class AlertViewBotDemoUITests: XCTestCase {
  
  override func setUp() {
    super.setUp()

    continueAfterFailure = false
    XCUIApplication().launch()
  }
  
  func testExample() {
    
    let app = XCUIApplication()
    app.buttons["Open alert"].tap()
    
    let collectionViewsQuery = app.alerts["Email"].collectionViews
    collectionViewsQuery.textFields["Email"].typeText("john@marketplacer.com")
    collectionViewsQuery.buttons["OK"].tap()
  }
}
