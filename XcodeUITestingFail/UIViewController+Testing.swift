import UIKit

extension UIViewController {
    func addDelayView(name name: String) {
        let delayTime = dispatch_time(DISPATCH_TIME_NOW, Int64(1 * Double(NSEC_PER_SEC)))
        dispatch_after(delayTime, dispatch_get_main_queue()) {
            let view = UIView(frame: CGRect(x: 0, y: 0, width: 1, height: 1))
            view.accessibilityLabel = name
            self.view.addSubview(view)
        }
    }
}