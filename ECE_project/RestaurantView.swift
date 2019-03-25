//
//  RestaurantView.swift
//  ECE_project
//
//  Created by Omor Faruk Mashuk on 2019-03-25.
//  Copyright © 2019 Ibrahim  Khalil. All rights reserved.
//

import Foundation
import UIKit




class RestaurantView : UIViewController {
    
    
    
    
    @IBOutlet var TableView: UITableView!
    
    @IBAction func AddButton101(_ sender: Any) {
        
//        self.performSegue(withIdentifier: "AddDishSegue", sender: self)
        
        self.performSegue(withIdentifier: "AddDishViewSegue", sender: self)
        
        
    }
    
    
    
    
    
}
