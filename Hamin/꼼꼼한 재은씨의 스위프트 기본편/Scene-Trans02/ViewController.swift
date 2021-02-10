//
//  ViewController.swift
//  Scene-Trans02
//
//  Created by 송하민 on 2021/02/14.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func moveByNavi(_ sender: Any) {
        
        guard let uvc = self.storyboard?.instantiateViewController(withIdentifier:"SecondVC")
        else {
            return
        }
        
        // 화면 전환
        self.navigationController?.pushViewController(uvc, animated: true)
    }
    
    @IBAction func movePresent(_ sender: Any) {
        guard let uvc = self.storyboard?.instantiateViewController(withIdentifier:"SecondVC")
        else {
            return
        }
        
        // 화면을 전환한다.
        self.present(uvc, animated: true)
    }
    
    
}

