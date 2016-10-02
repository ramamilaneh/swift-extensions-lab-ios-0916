//
//  ViewController.swift
//  Extensions
//
//  Created by Flatiron School on 6/30/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var unicornLevelLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let fullName = "Rama Milaneh"
        let phoneNumber = 8675309
        print("The whisper extionstion \(fullName.whisper())\n and the shout \(fullName.shout())")
        print("The result of pigLatin \(fullName.pigLatin) and the points are \(fullName.points)")
        print("The result of new extension of class Int: \(phoneNumber.half()) \(phoneNumber.halved) \(phoneNumber.squared) \(phoneNumber.isDivisible(by: 3))")
        
        unicornLevelLabel.text = fullName.unicornLevel
    }
}


