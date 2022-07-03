
import UIKit

class BigContactsViewController: UIViewController {
    
    @IBOutlet weak var NumberInBigContacts: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func backToContacs(_ sender: Any) {
        dismiss(animated: true)
    }
    
    
    
    @IBOutlet weak var LabelInBigContact: UILabel!
    
    }

