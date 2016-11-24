import UIKit

extension UIViewController {
    func addDelayView(name: String) {
        let delayTime = DispatchTime.now() + Double(Int64(1 * Double(NSEC_PER_SEC))) / Double(NSEC_PER_SEC)
        DispatchQueue.main.asyncAfter(deadline: delayTime) {
            let view = UIView(frame: CGRect(x: 0, y: 0, width: 1, height: 1))
            view.accessibilityLabel = name
            self.view.addSubview(view)
        }
    }
}
