//
//  UserDeal.swift
//  ECE_project
//
//  Created by Shahriar Real on 2019-03-25.
//  Copyright © 2019 Ibrahim  Khalil. All rights reserved.
//

import UIKit

class UserDeal : UIViewController{
    
    @IBOutlet weak var label: UILabel!
    
    @IBAction func Slider(_ sender: UISlider) {
        label.text = String(Int(sender.value))
    }
    
    
    
    }
