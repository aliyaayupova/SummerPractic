

import UIKit

protocol CreateContactDelegate: AnyObject{
    func saveContact(contacts: Contacts)
}

class CreateContactViewController: UIViewController {

    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var numberTextField: UITextField!
    
    weak var delegate: CreateContactDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func submitButtonDidTap(_ sender: Any) {
        guard let name = nameTextField.text,
              let number = numberTextField.text
        else{
            return
        }
        let contact = Contacts(name: name, number: number)
        delegate?.saveContact(contacts: contact)
        dismiss(animated: true)
    }
    
}
