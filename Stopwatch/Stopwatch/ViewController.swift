//
//
//  Project 1 : Build a Stopwatch
//
//  ViewController.swift
//  Stopwatch
//
//
//  Created by user195628 on 6/25/21.
//

import UIKit

class ViewController: UIViewController {
    
    //Outlets and properties
    
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var stopButton: UIButton!
    @IBOutlet weak var resumeButton: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    @IBOutlet weak var timerLabel: UILabel!
    
    var timer : Timer = Timer() // Instantiation of Timer object
    var counter : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stopButton.isHidden = true
        resumeButton.isHidden = true
        resetButton.isHidden = true
    }

    // Action to start timer
    @IBAction func startTimer(_ sender: UIButton) {
        startButton.isHidden = true
        stopButton.isHidden = false
        setTimer() // Call to schedule timer to start counting
        
    }
    
    // Action to stop timer
    @IBAction func stopTimer(_ sender: UIButton) {
        stopButton.isHidden = true
        resumeButton.isHidden = false
        resetButton.isHidden = false
        timer.invalidate() // To stop timer counting
        
    }
    
    // Action to resume timer
    @IBAction func resumeTimer(_ sender: UIButton) {
        resumeButton.isHidden = true
        resetButton.isHidden = true
        stopButton.isHidden = false
        setTimer() // Call to schedule timer to start counting
    }
    
    // Action to reset timer
    @IBAction func resetTimer(_ sender: UIButton) {
        resetButton.isHidden = true
        resumeButton.isHidden = true
        startButton.isHidden = false
        counter = 0
        timerLabel.text = String(format: "%02d:%02d:%02d", 0, 0, 0)    }
    
    // Timer logic and display
    @objc func counterUpdate(){
        counter+=1
        let seconds = (counter % 3600) % 60
        let minutes = ( counter % 3600) / 60
        let hours = counter/3600
        timerLabel.text = String(format: "%02d:%02d:%02d", hours, minutes, seconds)    }
    
    // Method to schedule timer
    func setTimer(){
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(counterUpdate), userInfo: nil, repeats: true)
        
    }
    
    
}

