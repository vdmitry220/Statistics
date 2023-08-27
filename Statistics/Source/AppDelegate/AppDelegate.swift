import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    let appFactory = AppFactory()
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        if let window = window {
            appFactory.initiateView(window: window)
        }
        window?.makeKeyAndVisible()
        return true
    }
}

