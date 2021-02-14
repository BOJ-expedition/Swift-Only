// 1. main() 함수가 실행된다.
// 2. main() 함수는 다시 UIApplicationMain() 함수를 호출한다.
// 3. UIApplicationMain() 함수는 앱의 본체에 해당하는 UIApplication 객체를 생성한다.
// 4. UIApplication 객체는 Info.plist 파일을 바탕으로 앱에 필요한 데이터와 객체를 로드한다.
// 5. AppDelegate 객체를 생성하고 UIApplication 객체와 연결한다.
// 6. 이벤트 루프를 만드는 등 실행에 필요한 준비를 진행한다.
// 7. 실행 완료 직전, 앱 델리케이트의 application(_:didFinishLaunchingWithOptions:) 메소드를 호출한다.

// 반면 스위프트는 C 기반의 언어가 아닙니다. 따라서 스위프트 기반 프로젝트에는 main.m 파일이 존재하지 않으며
// 엔트리 포인트 역시 존재하지 않습니다. 이 때문에 스위프트에서는 위의 1~5의 과정을 다음과 같은 어노테이션으로 대체합니다
// @UIApplicationMain


import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        sleep(2)
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

