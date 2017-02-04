import UIKit

class Controller: UIViewController {

    @IBOutlet var textField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        textField.autocorrectionType = .no

        view.backgroundColor = UIColor.white
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(Controller.saveAction))
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }

    func saveAction() {
        let alertController = UIAlertController(title: "Hello", message: nil, preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "Yes", style: .default) { action in
            self.view.accessibilityLabel = "Background"
            })
        present(alertController, animated: true, completion: nil)
    }
}
