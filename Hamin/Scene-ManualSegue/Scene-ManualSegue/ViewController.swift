//
//  ViewController.swift
//  Scene-ManualSegue
//
//  Created by 송하민 on 2021/02/14.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    // 세그웨이 실행
    @IBAction func wind(_ sender: Any) {
        
        self.performSegue(withIdentifier: "ManualWind", sender: self)
    }
}

