//
//  UserEnd.swift
//  ECE_project
//
//  Created by Shahriar Real on 2019-03-24.
//  Copyright © 2019 Ibrahim  Khalil. All rights reserved.
//

import UIKit




class UserEnd : UIViewController {
    
    @IBOutlet weak var table: UITableView!
    
    
    var users = [String]()
    
    
    @IBAction func AddButton(_ sender: Any) {
        
        self.performSegue(withIdentifier: "AddDishSegue", sender: self)
        
    }
    
    
}


