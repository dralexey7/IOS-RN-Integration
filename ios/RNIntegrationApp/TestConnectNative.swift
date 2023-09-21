//
//  TestConnectNative.swift
//  RNIntegrationApp
//
//  Created by Алексей Дрождев on 20.09.2023.
//

import Foundation
import React

@objc(TestConnectNativeModule)
class TestConnectNativeModule: NSObject {
    @objc
    static func requiresMainQueueSetup() -> Bool {
        return true
    }
    
    @objc
    func sendMessageToNative(_ rnMessage: String) {
        print("This log is from swift: \(rnMessage)")
    }
    
    
    
    @objc
    func dismissViewController (_ reactTag: NSNumber) {
        DispatchQueue.main.async {
            //print("......................")
            let topController = UIApplication.topMostViewController()
            topController?.dismiss(animated: false, completion: nil)
            //if let view = RNViewManager.sharedInstance.bridge?.uiManager.view(forReactTag: reactTag) {
            //    print("qwertyuioiuhgfdsdfg")
            //    let reactNativeVC: UIViewController! = view.reactViewController()
            //    reactNativeVC.dismiss(animated: true, completion: nil)
            //}
        }
    }
}
