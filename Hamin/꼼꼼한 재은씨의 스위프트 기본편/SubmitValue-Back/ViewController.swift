import UIKit

class ViewController: UIViewController {
    // 값을 화면에 표시하기 위한 아울렛 변수들
    @IBOutlet var resultEmail: UILabel!
    @IBOutlet var resultUpdate: UILabel!
    @IBOutlet var resultInterval: UILabel!
    
    
    // 값을 직접 전달받을 프로퍼티들
//    var paramEmail: String?
//    var paramUpdate: Bool?
//    var paramInterval: Double?
    
    @IBAction func onRegister(_ sender: Any) {
        guard let rvc =
                self.storyboard?.instantiateViewController(withIdentifier: "RVC") as?
                    FromViewController
        else {
            return
        }
        rvc.modalPresentationStyle = .fullScreen
        self.present(rvc, animated: true)
    }
    
    
    // 화면이 표시될 때.
    // 따라서 화면을 갱신할 때마다 실행해주어야 하는 코드가 있다면 viewWillAppend(_:) 메소드에 작성하면 된다
    override func viewWillAppear(_ animated: Bool) {
        
//        if let email = paramEmail {
//            resultEmail.text = email
//        }
//
//        if let update = paramUpdate {
//            resultUpdate.text = update ? "자동갱신" : "자동갱신안함"
//        }
//
//        if let interval = paramInterval {
//            resultInterval.text = "\(Int(interval))분마다"
//        }
        
        // AppDelegate 객체의 인스턴스를 가져온다.
//        let ad = UIApplication.shared.delegate as? AppDelegate
//
//        if let email = ad?.paramEmail {
//            resultEmail.text = email
//        }
//        if let update = ad?.paramUpate {
//            resultUpdate.text = update == true ? "자동갱신" : "갱신안함"
//        }
//        if let interval = ad?.paramInterval {
//            resultInterval.text = "\(Int(interval))"
//        }
        
        // UserDefault 객체 이용
        
        let ud = UserDefaults.standard
        
        if let email = ud.string(forKey: "email") {
            resultEmail.text = email
        }
        
        let update = ud.bool(forKey: "isUpdate")
        resultUpdate.text = (update == true ? "자동갱신" : "갱신안함")
        
        let interval = ud.double(forKey: "interval")
        resultInterval.text = "\(Int(interval))분마다"
    }
    
}

