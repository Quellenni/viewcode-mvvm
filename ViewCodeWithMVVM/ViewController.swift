import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableview: UITableView!
    
    var listUser: [Pessoa] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableview.delegate = self
        self.tableview.dataSource = self
        self.tableview.separatorStyle = .none
        self.tableview.register(UINib(nibName: "CustomTableViewCell", bundle: nil), forCellReuseIdentifier: "CustomTableViewCell")
        self.configArrayUser()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 12
    }

    func configArrayUser() {
        self.listUser.append(Pessoa(name: "Caio", age: 30, profession: "Developer IOS", salary: "20.000,00", imageUser: UIImage(systemName: "person.circle") ?? UIImage(), isEnableHeart: true))
        self.listUser.append(Pessoa(name: "Fabrício", age: 30, profession: "Developer IOS", salary: "20.000,00", imageUser: UIImage(systemName: "person.circle") ?? UIImage(), isEnableHeart: false))
        self.listUser.append(Pessoa(name: "Alencar", age: 30, profession: "Developer IOS", salary: "20.000,00", imageUser: UIImage(systemName: "person.circle") ?? UIImage(), isEnableHeart: false))
        self.listUser.append(Pessoa(name: "Jorge", age: 30, profession: "Developer IOS", salary: "20.000,00", imageUser: UIImage(systemName: "person.circle") ?? UIImage(), isEnableHeart: false))
        self.listUser.append(Pessoa(name: "Felipe", age: 30, profession: "Developer IOS", salary: "20.000,00", imageUser: UIImage(systemName: "person.circle") ?? UIImage(), isEnableHeart: false))
        self.listUser.append(Pessoa(name: "Robson", age: 30, profession: "Developer IOS", salary: "20.000,00", imageUser: UIImage(systemName: "person.circle") ?? UIImage(), isEnableHeart: false))
        self.listUser.append(Pessoa(name: "Caio", age: 30, profession: "Developer IOS", salary: "20.000,00", imageUser: UIImage(systemName: "person.circle") ?? UIImage(), isEnableHeart: false))
        self.listUser.append(Pessoa(name: "Fabrício", age: 30, profession: "Developer IOS", salary: "20.000,00", imageUser: UIImage(systemName: "person.circle") ?? UIImage(), isEnableHeart: false))
        self.listUser.append(Pessoa(name: "Alencar", age: 30, profession: "Developer IOS", salary: "20.000,00", imageUser: UIImage(systemName: "person.circle") ?? UIImage(), isEnableHeart: false))
        self.listUser.append(Pessoa(name: "Jorge", age: 30, profession: "Developer IOS", salary: "20.000,00", imageUser: UIImage(systemName: "person.circle") ?? UIImage(), isEnableHeart: false))
        self.listUser.append(Pessoa(name: "Felipe", age: 30, profession: "Developer IOS", salary: "20.000,00", imageUser: UIImage(systemName: "person.circle") ?? UIImage(), isEnableHeart: false))
        self.listUser.append(Pessoa(name: "Robson", age: 30, profession: "Developer IOS", salary: "20.000,00", imageUser: UIImage(systemName: "person.circle") ?? UIImage(), isEnableHeart: false))
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celula = tableview.dequeueReusableCell(withIdentifier: "CustomTableViewCell") as? CustomTableViewCell
        celula?.setupCell(setup: self.listUser[indexPath.row])
        return celula ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(self.listUser[indexPath.row].name)
    }

    
}

struct Pessoa {
    var name: String
    var age: Int
    var profession: String
    var salary: String
    var imageUser: UIImage
    var isEnableHeart: Bool
}
