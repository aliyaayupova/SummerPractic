
import UIKit

class UnlockViewController: ViewController {
    @IBOutlet weak var nameLabel: UILabel!
    var name: String?
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func closwButtonDidTap(_ sender: Any) {
        dismiss(animated: true)
    }

}
