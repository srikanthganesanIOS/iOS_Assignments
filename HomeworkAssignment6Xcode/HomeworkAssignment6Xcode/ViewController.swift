//
//  ViewController.swift
//  HomeworkAssignment6Xcode
//
//
//

import UIKit

class ViewController: UIViewController {

    // Outlet for Label
    @IBOutlet weak var displayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
         
    }
    
    // Action for "Press Me" button
    @IBAction func changeLabelText(_ sender: UIButton) {
        
        displayLabel.text = "Hello World"
        
    }
    
}

