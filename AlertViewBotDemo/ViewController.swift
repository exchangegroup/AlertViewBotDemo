//
//  ViewController.swift
//  AlertViewBotDemo
//
//  Created by Evgenii on 27/08/2015.
//  Copyright © 2015 Evgenii Neumerzhitckii. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
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
      textField.autocapitalizationType = UITextAutocapitalizationType.Sentences
      textField.autocorrectionType = UITextAutocorrectionType.Default
//      textField.font = UIFont.preferredFontForTextStyle(UIFontTextStyleBody)
//      textField.clearButtonMode = UITextFieldViewMode.Always
    }
    
    alertView.show()
  }


}

