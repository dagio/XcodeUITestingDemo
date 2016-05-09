import UIKit
import CoreData

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow? = {
        let window = UIWindow(frame: UIScreen.mainScreen().bounds)

        return window
    }()

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        if let window = self.window {
            let layout = UICollectionViewFlowLayout()
            layout.itemSize = CGSize(width: 120, height: 120)
            layout.sectionInset = UIEdgeInsets(top: 15, left: 0, bottom: 15, right: 0)

            let viewController = Controller()
            window.rootViewController = UINavigationController(rootViewController: viewController)
            window.makeKeyAndVisible()
        }
        
        return true
    }
}
