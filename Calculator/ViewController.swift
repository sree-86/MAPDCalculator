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
    var hasDecimal:Bool = false
    
    @IBOutlet weak var result: UILabel!
    
    
    @IBAction func digits(_ sender: UIButton) {
        if mathFunction == true{
            result.text = String(sender.tag-1)
            valOnScreen = Double(result.text!)!
            mathFunction = false
        }
        else{
        result.text! += String(sender.tag-1)
        valOnScreen = Double(result.text!)!
        }
    }
    
    @IBAction func functions(_ sender: UIButton) {
        
        if(result.text == "0") {
            
            if(sender.tag != 18) {
                result.text = ""
                
            }
            else {
                if(hasDecimal) {
                    result.text = "0"
                }
            }
            
        }
 
        if(sender.tag == 18) {
            if(!hasDecimal) {
                result.text?.append(".")
                hasDecimal = true
            }
        }/*
        else {
            result.text?.append(String(sender.tag))
        }*/
        
        if sender.tag == 17
        {
            result.text = ""
            firstval = 0
            valOnScreen = 0
            arithop = 0
            hasDecimal = false
        }
        
        if result.text != "" && sender.tag != 11 && sender.tag != 16 && mathFunction == false
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
            hasDecimal = false
        }
        else if sender.tag == 11
        {
            if arithop == 12
            {
                result.text = String(firstval + valOnScreen)
            }
            else if arithop == 13
            {
                result.text = String(firstval - valOnScreen)
            }
            else if arithop == 14
            {
                result.text = String(firstval * valOnScreen)
            }
            else if arithop == 15
            {
                result.text = String(firstval / valOnScreen)
            }
        }
        else if sender.tag == 16
        {
            
        }
        else if sender.tag == 17
        {
            result.text = ""
            firstval = 0
            valOnScreen = 0
            arithop = 0
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

