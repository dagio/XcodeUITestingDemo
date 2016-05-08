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

        self.addDelayView(name: "Delay 1")
    }

    func saveAction() {
        let alertController = UIAlertController(title: "Hello", message: nil, preferredStyle: .Alert)
        alertController.addAction(UIAlertAction(title: "Yes", style: .Default) { action in
            self.view.accessibilityLabel = "Background"
            self.addDelayView(name: "Delay 2")
            })
        self.presentViewController(alertController, animated: true, completion: nil)
    }
}