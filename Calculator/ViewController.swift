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

    @IBOutlet weak var result: UILabel!
    
    
    @IBAction func digits(_ sender: UIButton) {
        result.text! += String(sender.tag-1)
        valOnScreen = Double(result.text!)!
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

