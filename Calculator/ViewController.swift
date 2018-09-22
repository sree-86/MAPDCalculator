//
//  ViewController.swift
//  Calculator
//
//  Created by Sreeram Ramakrishnan on 2018-09-22.
//  Copyright © 2018 Centennial College. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var valOnScreen:Double = 0
    var firstval:Double = 0
    var mathFunction  = false
    var arithop = 0
    
    @IBOutlet weak var result: UILabel!
    
    
    @IBAction func digits(_ sender: UIButton) {
        result.text! += String(sender.tag-1)
        valOnScreen = Double(result.text!)!
    }
    
    @IBAction func functions(_ sender: UIButton) {
        
        if result.text != "" && sender.tag != 11 && sender.tag != 16
        {
            firstval = Double(result.text!)!
            if sender.tag == 12
            {
                result.text = "+"
            }
            if sender.tag == 13
            {
                result.text = "-"
            }
            if sender.tag == 14
            {
                result.text = "*"
            }
            if sender.tag == 15
            {
                result.text = "/"
            }
            
            arithop = sender.tag
            mathFunction = true
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

