import UIKit

class Controller: UIViewController {
    init() {
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.whiteColor()
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .Add, target: self, action: #selector(Controller.saveAction))
    }

    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)

        self.delayView(name: "Delay 1")
    }

    func delayView(name name: String) {
        let delayTime = dispatch_time(DISPATCH_TIME_NOW, Int64(1 * Double(NSEC_PER_SEC)))
        dispatch_after(delayTime, dispatch_get_main_queue()) {
            let view = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
            view.accessibilityLabel = name
            self.view.addSubview(view)
        }
    }

    func saveAction() {
        let alertController = UIAlertController(title: "Hello", message: nil, preferredStyle: .Alert)
        alertController.addAction(UIAlertAction(title: "Yes", style: .Default) { action in
            self.view.accessibilityLabel = "Background"
            self.delayView(name: "Delay 2")
            })
        self.presentViewController(alertController, animated: true, completion: nil)
    }
}