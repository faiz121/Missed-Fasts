//
//  ViewController.swift
//  Missed Fasts
//
//  Created by Mohammed Faizul Islam on 3/9/24.
//

import UIKit

class ViewController: UIViewController {
    
    var fastCount = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func addFast(_ sender: Any) {
        fastCount = fastCount + 1
        self.performSegue(withIdentifier: "goToList", sender: self)
    }
    
    
    @IBAction func viewAllMissedFasts(_ sender: Any) {
        self.performSegue(withIdentifier: "goToMissed", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToList" {
            
            let destinationVC = segue.destination as! ListViewController
            destinationVC.fastCount = fastCount
        }
        
        if segue.identifier == "goToMissed" {
            let destinationVC = segue.destination as! MissedFastsViewController
        }
    }
}

