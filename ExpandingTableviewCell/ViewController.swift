//
//  ViewController.swift
//  ExpandingTableviewCell
//
//  Created by mahmoud yousef on 06/01/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var isExpanded:[Bool] = Array(repeating: false, count: 20)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}

extension ViewController:UITableViewDataSource , UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        isExpanded.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: ExpandableTableViewCell.reuseID, for: indexPath) as! ExpandableTableViewCell
        cell.configureCell(isExpanded: isExpanded[indexPath.row], index: indexPath.row)
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            isExpanded[indexPath.row] = !isExpanded[indexPath.row]
            tableView.reloadRows(at: [indexPath], with: UITableView.RowAnimation.automatic)
        
    }

    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
       isExpanded[indexPath.row] ? 220 : 70
    }
}
    
   



