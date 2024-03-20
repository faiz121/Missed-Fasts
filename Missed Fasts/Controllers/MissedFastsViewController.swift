//
//  MissedFastsViewController.swift
//  Missed Fasts
//
//  Created by Mohammed Faizul Islam on 3/9/24.
//

import UIKit

class MissedFastsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    
    @IBOutlet weak var tableView: UITableView!
    var jsonData: [[String: Any]] = [
        ["title": "02-02-2023", "description": "Missed one"],
        ["title": "04-02-2023", "description": "Missed two"]
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return jsonData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let rowData = jsonData[indexPath.row]
        cell.textLabel?.text = rowData["title"] as? String // Title
        cell.detailTextLabel?.text = rowData["description"] as? String // Description
        return cell
    }
    

    @IBAction func cancel(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
