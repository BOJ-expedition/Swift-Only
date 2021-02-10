//
//  SecondViewController.swift
//  Scene-Trans01
//
//  Created by 송하민 on 2021/02/13.
//

import UIKit
class SecondViewController: UIViewController {
    
   
    @IBAction func dismiss(_ sender: Any) {
        
        self.presentingViewController?.dismiss(animated: true)
    }
    
}
