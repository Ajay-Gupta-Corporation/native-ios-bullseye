//
//  ViewController.swift
//  BullsEye
//
//  Created by Ajay Gupta on 3/19/15.
//  Copyright (c) 2015 Lennox International. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var slider: UISlider!
    var currentValue: Int = 50
    var targetValue: Int = 0
    var roundNumber: Int = 0
    
    @IBOutlet weak var targetLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        startNewRound()
    }
    
    func startNewRound() {
        slider.value = 50
        targetValue = Int(arc4random_uniform(100)) + 1
        roundNumber++
        
        targetLabel.text = String(targetValue)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showAlert() {
        let message = "The current value of slider: \(currentValue)" +
                      "\n The target value is: \(targetValue)"
         let alert = UIAlertController(title: "Hello, World", message: message, preferredStyle: .Alert)
        let action = UIAlertAction(title: "Awesome", style: .Default, handler: nil)
        alert.addAction(action)
        presentViewController(alert, animated: false, completion: nil)
        
        startNewRound()
    }

    @IBAction func sliderMoved(sender: AnyObject) {
        let slider = sender as UISlider
        currentValue = lroundf(slider.value)
    }
}

