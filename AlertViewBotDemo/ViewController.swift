import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
  }

  @IBAction func didTapOpenAlertButton(sender: AnyObject) {
    openAlertView()
  }
  
  private func openAlertView() {
    let title = "Email"
    
    let alertView = UIAlertView(title: title,
      message: "",
      delegate: nil, cancelButtonTitle: nil,
      otherButtonTitles: "OK", "Cancel")
    
    alertView.cancelButtonIndex = 1
    alertView.alertViewStyle = UIAlertViewStyle.PlainTextInput
    
    if let textField = alertView.textFieldAtIndex(0) {
      textField.placeholder = title
//      textField.autocapitalizationType = UITextAutocapitalizationType.Sentences
//      textField.autocorrectionType = UITextAutocorrectionType.Default
    }
    
    alertView.show()
  }


}

