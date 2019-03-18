//
//  HomePage.swift
//  ECE_project
//
//  Created by Mohd Azfar Nazim on 2019-03-03.
//  Copyright © 2019 Ibrahim  Khalil. All rights reserved.
//

import UIKit

class HomePage: UIViewController {
   
    //Actions
    @IBOutlet var optionButtons: [UIButton]!
    
    
    @IBAction func HomeSegueMain(_ sender: Any) {
        self.performSegue(withIdentifier: "HomeSegue3", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func handleOptions(_ sender: UIButton) {
        optionButtons.forEach { (button) in
            UIView.animate(withDuration: 0.3, animations: {
                button.isHidden = !button.isHidden
                self.view.layoutIfNeeded()
            })
            
                    }
    }
    
    
    @IBAction func itemSelected(_ sender: UIButton) {
            }
    
 
    
}
