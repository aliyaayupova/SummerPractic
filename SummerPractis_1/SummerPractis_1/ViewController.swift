//for 11 iPhone
import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var greetingLabel: UILabel!
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var imageOnFirstVC: UIImageView!
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        print(#function)
        
    }
    
    @IBAction func buttonDidTab(_ sender: Any) {
        guard let username = usernameTextField.text else { return }
        imageOnFirstVC.isHidden = false
        if username .starts(with: "89087"){
            guard let truekVC = storyboard?.instantiateViewController(withIdentifier: "ContactTableViewController") else { return }
            navigationController?.pushViewController(truekVC, animated: true)
            
        
        }else{
            guard let unlockVC = storyboard?.instantiateViewController(withIdentifier: "UnlockViewController") else { return }
            present(unlockVC, animated: true)
        }
    }
    
    override func viewWillAppear(_ animated: Bool){
        super.viewWillAppear(animated)
        print(#function)
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print(#function)
    }
 
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print(#function)
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print(#function)
    }
}

