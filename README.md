#  iOS app that demonstrates an issue with a UI Test when it is run by Xcode bot

An iOS app demo that reproduces an issue with UI test. In the UI test we open a UIAlertView and fill the text box.

UI test runs successfully in Xcode but fails when run by Xcode bot:

> Assertion Failure: UI Testing Failure - failed: Timed out waiting for key event to complete


## Software used

Server API v6
SDKs: OS X 15A244e, watchOS 13S5325c, iOS 13A4325c
OS X 10.11 (15A263e), Xcode 7.0 (7A192o), OS X Server 5.0.1 (15S2235)
