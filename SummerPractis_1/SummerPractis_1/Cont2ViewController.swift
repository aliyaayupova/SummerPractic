
import UIKit

class Cont2ViewController: UIViewController {

    
    @IBOutlet weak var nameContact: UILabel!
    @IBOutlet weak var numberContact: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
     
    
    @IBAction func backToContactMassiveButtonDidTap(_ sender: Any) {
        /*
        guard let backVC = storyboard?.instantiateViewController(withIdentifier: "Cont2ViewController") as? Cont2ViewController else{ return}
        present(backVC, animated: true)
        */
        guard let contactName = nameContact.text else{ return}
        if contactName == "Masha Ivanova"{
            nameContact.text = "Masha Ivanova"
            numberContact.text = "8 (915) 131-66-87"
        } else if contactName == "Kirill Zheltov"{
            nameContact.text = "Kirill Zheltov"
            numberContact.text = "5678"
        }
        
    }
}
