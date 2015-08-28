#  iOS app that demonstrates an issue with a UI Test when it is run by Xcode bot

This repository can be deleted after October 2015.

An iOS app demo that reproduces an issue with UI test. In the UI test we open a UIAlertView and fill the text box.

UI test runs successfully in Xcode but fails when run by Xcode bot:

> Assertion Failure: UI Testing Failure - failed: Timed out waiting for key event to complete


Here is the text log

```
Here is the test log:

> Type 'john@marketplacer.com' into
  Wait for app to idle
  > Find the "Email" TextField
    Snapshot accessibility hierarchy...
    Find: Descendants matching type Alert
    Find: Elements matching predicate '"Email" IN identifiers'
    Find: Descendants matching type CollectionView
    Find: Descendants matching type TextField
    Find: Elements matching predicate '"Email" IN identifiers'
    Wait for app to idle
  > Check for UI Interruption: Descendants matching type Alert
    Snapshot accessibility hierarchy...
    Find: Descendants matching type Alert
  > (IN RED) Synthesise event
    (IN RED) Assertion Failure: UI Testing Failure - failed: Timed out waiting for key event to complete
```

## Software used

Server API v6

SDKs: OS X 15A244e, watchOS 13S5325c, iOS 13A4325c

OS X 10.11 (15A263e), Xcode 7.0 (7A192o), OS X Server 5.0.1 (15S2235)
