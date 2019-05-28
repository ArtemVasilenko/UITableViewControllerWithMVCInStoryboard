import UIKit

class MyTableViewController: UITableViewController {
    
    var itemArray = [Model]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let item = Model(name: "Holodov", prof: "mentor")
        let item2 = Model(name: "Holodov2", prof: "mentor2")
        itemArray.append(item)
        itemArray.append(item2)
        
    }
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? MyTableViewCell {
            
            let item = itemArray[indexPath.row]
            cell.refresh(item)
            
            return cell
        }
        
        return UITableViewCell()
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
}
