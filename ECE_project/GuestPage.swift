//
//  GuestPage.swift
//  ECE_project
//
//  Created by Mohd Azfar Nazim on 2019-03-03.
//  Copyright © 2019 Ibrahim  Khalil. All rights reserved.
//

import UIKit

class GuestPage: UIViewController {
    @IBAction func HomePressed2(_ sender: Any) {
        self.performSegue(withIdentifier: "HomeSegue2", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
}

}
