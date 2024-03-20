//
//  ListViewController.swift
//  Missed Fasts
//
//  Created by Mohammed Faizul Islam on 3/9/24.
//

import UIKit

class ListViewController: UIViewController {
    
    @IBOutlet weak var fastCountLabel: UILabel!
    var fastCount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fastCountLabel.text = "\(fastCount)"

        // Do any additional setup after loading the view.
    }
    
    @IBAction func cancelPressed(_ sender: Any) {
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
