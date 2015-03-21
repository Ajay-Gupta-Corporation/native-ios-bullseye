//
//  ViewController.swift
//  BullsEye
//
//  Created by Ajay Gupta on 3/19/15.
//  Copyright (c) 2015 Lennox International. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var currentValue: Int = 50
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showAlert() {
        let message = "The current value of slider: \(currentValue)"
         let alert = UIAlertController(title: "Hello, World", message: message, preferredStyle: .Alert)
        let action = UIAlertAction(title: "Awesome", style: .Default, handler: nil)
        alert.addAction(action)
        presentViewController(alert, animated: false, completion: nil)
    }

    @IBAction func sliderMoved(sender: AnyObject) {
        let slider = sender as UISlider
        println("Value of slider now is: \(slider.value)")
        currentValue = lroundf(slider.value)
    }
}

