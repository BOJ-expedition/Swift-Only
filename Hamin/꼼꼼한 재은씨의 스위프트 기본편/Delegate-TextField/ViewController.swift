//
//  ViewController.swift
//  Delegate-TextField
//
//  Created by 송하민 on 2021/03/02.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    // 텍스트 필드의 편집을 시작할 때 호출
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        print("텍스트 필드의 편집이 시작됩니다요이이잉")
        return true // false를 리턴하면 편집되지 않는다.
    }
    
    // 텍스트 필드의 편집이 시작된 후 호출
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("텍스트 필드의 편집이 시작되었습니다!")
    }
    
    // 텍스트 필드의 내용이 삭제될 때 호출
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        print("텍스트 필드의 내용이 삭제됩니다요잉")
        return true // false 를 리턴하면 삭제되지 않는다!
    }
    
    // 텍스트 필드의 내용이 변경될 때 호출
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        print("텍스트 필드의 내용이 \(string) 으로 변경됩니다")
        if self.turnTextField.isOn {
            if Int(string) == nil {
                
                if (textField.text?.count)! + string.count > 10 {
                    return false
                } else {
                    return true
                }
            }
        }
        return false
    }
    
    // 텍스트 필드의 리턴키가 눌러졌을 때 호출
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        print("텍스트 필드의 리턴키가 눌러졌습니다")
        return true
    }
    
    // 텍스트 필드 편집이 종료될 때 호출
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        print("텍스트 필드의 편집이 종료됩니다!")
        return true
    }
    
    // 텍스트 필드의 편집이 종료되었을 때 호출
    func textFieldDidEndEditing(_ textField: UITextField) {
        print("텍스트 필드의 편집이 종료되었습니다")
    }
    
    
    override func viewDidLoad() {
        
        // 텍스트 필드 속성 설정
        self.tf.placeholder = "값을 입력하세요"
        self.tf.keyboardType = UIKeyboardType.alphabet // 키보드 타입 영문자 패드로
        self.tf.keyboardAppearance = UIKeyboardAppearance.dark // 키보드 스타일 어둡게
        self.tf.returnKeyType = UIReturnKeyType.join // 리턴키 타입은 "Join"
        self.tf.enablesReturnKeyAutomatically = true // 리턴키 자동활성화 "ON"
        
        // 스타일 설정
        
        // 테두리 스타일 - 직선
        self.tf.borderStyle = UITextField.BorderStyle.line
        // 배경 색상
        self.tf.backgroundColor = UIColor(white: 0.87, alpha: 1.0)
        // 수직 방향으로 텍스트가 가운데 수정되도록
        self.tf.contentVerticalAlignment = .center
        // 수평 방향으로 텍스트가 가운데 정렬되도록
        self.tf.contentHorizontalAlignment = .center
        // 테두리 색상을 회색으로
        self.tf.layer.borderColor = UIColor.darkGray.cgColor
        // 테두리 두께 설정 (단위: Pt)
        self.tf.layer.borderWidth = 2.0
        
        
        /// 텍스트 필드를 최초 응답자로 지정
        self.tf.becomeFirstResponder()
        self.tf.delegate = self
    }

    @IBOutlet var tf: UITextField!
    
    @IBAction func confirm(_ sender: Any) {
        self.tf.resignFirstResponder()
    }
    

    @IBOutlet var turnTextField: UISwitch!
    
    @IBAction func input(_ sender: Any) {
        self.tf.becomeFirstResponder()
    }
    
}

