

import UIKit

struct Contacts{
    let name: String
    let number: String
}

class ContactTableViewController: UITableViewController {
    private let userDefoult = UserDefaults.standard
    private let key = "createButtonDidTap"
    
    
    var contactMassive: [Contacts] = [
        Contacts(name:"Masha Ivanova", number: "8 (907) 131-44-66"),
        Contacts(name:"Kirill Zheltov", number: "8 (917) 007-45-36"),
        Contacts(name:"Sasha Birukov", number: "8 (965) 583-48-61"),
        Contacts(name:"Irina Golovikhina", number: "8 (937) 667-10-19"),
        Contacts(name:"Pavel Dubov", number: "8 (903) 223-40-54"),
        Contacts(name:"Dasha Novikova", number: "8 (967) 199-03-01"),
        Contacts(name:"Nastya Maslova", number: "8 (934) 130-88-57"),
        Contacts(name:"Dima Vlasov", number: "8 (962) 166-19-36"),
        Contacts(name:"Vanya Timofeev", number: "8 (962) 771-48-00"),
        Contacts(name:"Alina Vedenskaya", number: "8 (967) 887-55-10"),
        Contacts(name:"Liza Glebova", number: "8 (957) 386-38-20"),
        Contacts(name:"Sasha Prudov", number: "8 (936) 288-47-02"),
                 
                
    ]
    

    override func viewDidLoad() {
        super.viewDidLoad()
    
    }

   
    override func numberOfSections(in tableView: UITableView) -> Int {
      
        return 1
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contactMassive.count
    }
    

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ContactTableViewCell", for: indexPath) as? ContactTableViewCell else { return UITableViewCell()}
        cell.nameLabel.text = contactMassive[indexPath.row].name

        return cell
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        60
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let bigContactVC = storyboard?.instantiateViewController(withIdentifier: "BigContactsViewController") else { return }
        
        present(bigContactVC, animated: true)
    
    }


    @IBAction func createButtonDidTap(_ sender: Any) {
        guard let createVC = storyboard?.instantiateViewController(withIdentifier: "CreateContactViewController") as? CreateContactViewController else{ return}
        userDefoult.set(true, forKey: key)
        createVC.delegate = self
        present(createVC, animated: true)
        
        
    }
    
}
extension ContactTableViewController: CreateContactDelegate{
    func saveContact(contacts: Contacts) {
        contactMassive.append(contacts)
        tableView.reloadData()
    }
}

