//
//  ViewController.swift
//  sliderTest
//
//  This example is to figure out how to dynamically use a slider to
//    set values in data fields. Probably need to try a double slider some time for
//    setting precision values. Can probably use a range switch statement with text
//    values to make a pseudo drop-down.
//
//  Created by Ken Pierce on 12/28/15.
//  Copyright © 2015 Ken Pierce. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


   
    
    var activeTextBox = 1
    var activeLabel: UILabel?
    
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!

    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var mySlider: UISlider!
    
    @IBAction func setTextOneActive(sender: AnyObject) {
        activeTextBox = 1
        mySlider.value = 0.5
        sliderMessage(mySlider)
    }


    
    @IBAction func setTextTwoActive(sender: AnyObject) {
        activeTextBox = 2
        mySlider.value = 0.5
        sliderMessage(mySlider)
    }
    
    
    @IBAction func sliderMessage(sender: AnyObject) {
        switch  activeTextBox {
        case 1:
            let maxVal = Float(1000.0)
            label1.text = String(format: "%.3f", self.mySlider.value * maxVal)
            
        case 2:
            label2.text = String(format: "%.2f", self.mySlider.value)
        default:
            label1.text = String(format: "%.2f", self.mySlider.value)
        }
       
        

    }
    
}

