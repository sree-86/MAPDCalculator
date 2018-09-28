//
//  App Name : Calculator
//  Student ID : 301042442
//
//  Created by Sreeram Ramakrishnan on 2018-09-22.
//  Copyright © 2018 Centennial College. All rights reserved.
//

import UIKit

class ViewController: UIViewController {                                // View Controller Main Function
    
    //variables
    
    var valOnScreen:Double = 0
    var firstval:Double = 0
    var mathFunction  = false
    var arithop = 0
    var hasDecimal:Bool = false
    
    
    @IBOutlet weak var result: UILabel!                             // Outlet for Result Label
    
    
    
    @IBAction func digits(_ sender: UIButton) {//Arithmetic Operand Action
        
        if mathFunction == true{
            if (result.text == "0."){
                result.text?.append(String(sender.tag-1))
                valOnScreen = Double(result.text!)!
            }
            else{
            result.text = String(sender.tag-1)
            valOnScreen = Double(result.text!)!
            mathFunction = false
            }
        }
        else{
            if (result.text == "."){
               result.text?.append(String(sender.tag-1))
            }
            else{
            result.text! += String(sender.tag-1)
            valOnScreen = Double(result.text!)!
            }
        }
    }
    
    @IBAction func functions(_ sender: UIButton) {                  //Arithmetic Operation Action
        
        if result.text != "" && sender.tag != 11 && sender.tag != 16 && mathFunction ==  false
        {
            firstval = Double(result.text!)!
            if sender.tag == 12                     //addition
            {
                result.text = "+"
                arithop = sender.tag
                mathFunction = true
                hasDecimal = false
            }
            if sender.tag == 13                 //subtraction
            {
                result.text = "-"
                arithop = sender.tag
                mathFunction = true
                hasDecimal = false
            }
            if sender.tag == 14                 //multiplication
            {
                result.text = "*"
                arithop = sender.tag
                mathFunction = true
                hasDecimal = false
            }
            if sender.tag == 15                 //division
            {
                result.text = "/"
                arithop = sender.tag
                mathFunction = true
                hasDecimal = false
            }
            
            // Square Root Function
            if sender.tag == 19
            {
                result.text = String(sqrt(firstval))
                
            }
            
        }
        if sender.tag == 17                     //All Clear Function
        {
            result.text = ""
            firstval = 0
            valOnScreen = 0
            arithop = 0
            hasDecimal = false
        }
        else if sender.tag == 11                //Arithmetic Operations
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
        
        
    }
    
    @IBAction func DeleteFunc(_ sender: UIButton) {                     //Clear Action
        if sender.tag == 16
        {
            if (result.text!).count > 0
            {
                let characters = Array(result.text!)
                result.text = String((characters.dropLast()))
                if result.text!.isEmpty
                {
                    mathFunction = false
                }
            }
        }
    }
    
    @IBAction func ArithDec(_ sender: UIButton) {                   // Decimal Function Action
        
        if(sender.tag==18){
            if(!hasDecimal){
                if( mathFunction == true){
                    result.text = "0."
                }
                else{
                result.text?.append(".")
                hasDecimal = true
                }
            }
        }
        else {
            result.text?.append(String(sender.tag-1))
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

