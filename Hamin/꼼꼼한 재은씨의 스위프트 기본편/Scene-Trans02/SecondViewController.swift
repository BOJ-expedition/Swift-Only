//
//  SecondViewController.swift
//  Scene-Trans02
//
//  Created by 송하민 on 2021/02/14.
//

import UIKit
class SecondViewController:UIViewController {
    
    @IBAction func back(_ sender: Any) {
        self.presentingViewController?.dismiss(animated: true)
    }
    
    @IBAction func Back2(_ sender: Any) {
        _ = self.navigationController?.popViewController(animated: true)
    }
    
    
}
