//
//  ViewController.swift
//  RNIntegrationApp
//
//  Created by Алексей Дрождев on 20.09.2023.
//

import UIKit
import React
import Foundation

class ViewController: UIViewController {
    @IBOutlet weak var textField: UITextField!
    
    @IBAction func BtnGoReactView(_ sender: Any) {
        let messageFromNative: String = textField.text!
        
        let jsCodeLocation = URL(string: "http://localhost:8081/index.bundle?platform=ios")!
                
                let rootView = RCTRootView(
                    bundleURL: jsCodeLocation,
                    moduleName: "RNIntegrationApp",
                    initialProperties: ["message_from_native": messageFromNative],
                    launchOptions: nil
                )
        let vc = UIViewController()
        vc.view = rootView
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated:false, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()
    }
    
    func hideKeyboardWhenTappedAround() {
        let tap = UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
}
