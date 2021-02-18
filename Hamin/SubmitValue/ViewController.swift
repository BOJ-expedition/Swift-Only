//
//  ViewController.swift
//  SubmitValue
//
//  Created by 송하민 on 2021/02/15.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet var email: UITextField!
    
    @IBOutlet var isUpdate: UISwitch!
    
    @IBAction func onSwitch(_ sender: UISwitch) {
        if (sender.isOn == true) {
            self.isUpdateText.text = "갱신함"
        } else {
            self.isUpdateText.text = "갱신하지 않음"
        }
    }
    
    
    @IBOutlet var interval: UIStepper!
    
    @IBAction func onStepper(_ sender: UIStepper) {
        let value = Int(sender.value);
        self.intervalText.text = "\(value)분 마다"
    }
    
    
    @IBOutlet var isUpdateText: UILabel!
    
    @IBOutlet var intervalText: UILabel!
    
    
    
    // 프레젠트, 네비게이션 컨트롤러 방식
    @IBAction func onSubmit(_ sender: Any) {
        
        // VC2 의 인스턴스 생성
        guard let rvc = self.storyboard?.instantiateViewController(withIdentifier: "RVC") as? ResultViewController
        else {
            return
        }
        
        // 값 전달
        rvc.paramEmail = self.email.text!
        rvc.paramUpdate = self.isUpdate.isOn
        rvc.paramInterval = self.interval.value
        
        // 화면이동
        
        // 프레젠트 메소드 방식
        //self.present(rvc, animated: true)
        
        // 네비게이션 컨트롤러 방식
        // self.navigationController?.pushViewController(rvc, animated: true)
    }
    
    // 메뉴얼 세그웨이 방식 (세그웨이 화살표 선택후 어트리뷰트 인스펙터에서 identifier 지정 한 다음에 코드작성)
    @IBAction func onPerformSegue(_ sender: Any) {
        self.performSegue(withIdentifier: "ManualSubmit", sender: self)
    }
    
    // 세그웨이의 경우 자동으로 목적지 vc의 인스턴스를 가지기 때문에, 세그웨이 객체를 통해 생성된 뷰 컨트롤러 인스턴스 참조를 읽어와야 한다.
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // 목적지 뷰 컨트롤러 인스턴스 읽어오기
        let dest = segue.destination
        
        // dest는 UIViewController 이기 때문에 다운캐스팅, 실패하면 메소드 실행을 종료
        guard let rvc = dest as? ResultViewController
        else {
            return
        }
        
        // 캐스팅된 인스턴스 상수 rvc를 이용해 값 전달
        rvc.paramEmail = self.email.text!
        rvc.paramUpdate = self.isUpdate.isOn
        rvc.paramInterval = self.interval.value
    }
    

}

