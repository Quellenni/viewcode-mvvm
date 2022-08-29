import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableview: UITableView!
    
    let viewModel:ViewModel = ViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableview.delegate = self
        self.tableview.dataSource = self
        self.tableview.separatorStyle = .none
        self.tableview.register(UINib(nibName: "CustomTableViewCell", bundle: nil), forCellReuseIdentifier: "CustomTableViewCell")
       
    }
    
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.viewModel.numberOfRows
    }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableview.dequeueReusableCell(withIdentifier: "CustomTableViewCell") as? CustomTableViewCell
        cell?.setupCell(user: self.viewModel.loudCurrentUser(indexPath: indexPath))
        cell?.delegate(delegate: self)
        return cell ?? UITableViewCell()
    }
    
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(self.viewModel.getName(indexPath: indexPath))
    }
    
}

extension ViewController: CustomTableViewCellDelegate{
    func tappedHeartButton(_ user: User) {
        self.viewModel.exchangeHearState(user)
    }
}

