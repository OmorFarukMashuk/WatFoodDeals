//
//  HomePage.swift
//  ECE_project
//
//  Created by Mohd Azfar Nazim on 2019-03-03.
//  Copyright © 2019 Ibrahim  Khalil. All rights reserved.
//

import UIKit

class HomePage: UIViewController {
   
    @IBOutlet weak var label1: UILabel!
    
    
    @IBAction func slider1(_ sender: UISlider) {
        label1.text = String(Int(sender.value))
    }
    
    @IBOutlet var optionItems: [UIButton]!
    
   
    @IBAction func HomeSegueMain(_ sender: Any) {
        self.performSegue(withIdentifier: "HomeSegue3", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func handleOptions(_ sender: UIButton) {
        optionItems.forEach { (button) in
            UIView.animate(withDuration: 0.3, animations: {
                button.isHidden = !button.isHidden
                self.view.layoutIfNeeded()
            })
            
        }
    }
    
    enum Options: String {
        case news = "News"
        case social = "Social"
        case locations = "Locations"
        case logout = "LogOut"
    }
    
    @IBAction func optionSelected(_ sender: UIButton) {
        guard let title = sender.currentTitle, let option = Options(rawValue: title) else{
            return
        }
        
        switch option {
        case .news:
            self.performSegue(withIdentifier: "NewsSegue1", sender: self)
        case .social:
            self.performSegue(withIdentifier: "SocialSegue1", sender: self)
        case .locations:
            self.performSegue(withIdentifier: "LocationsSegue1", sender: self)
        case .logout:
            self.performSegue(withIdentifier: "LogOutSegue", sender: self)
        default:
            return
        }
    }
}
