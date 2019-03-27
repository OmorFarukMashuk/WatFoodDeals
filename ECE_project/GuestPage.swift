//
//  GuestPage.swift
//  ECE_project
//
//  Created by Mohd Azfar Nazim on 2019-03-03.
//  Copyright © 2019 Ibrahim  Khalil. All rights reserved.
//

import UIKit

class GuestPage: UIViewController {
    
    
    
    @IBAction func ShinwaButtons(_ sender: Any) {
        self.performSegue(withIdentifier: "GuestToUser", sender: self)
    }
    
    
    @IBAction func ShinwaMainButton(_ sender: Any) {
        self.performSegue(withIdentifier: "GuestToUser", sender: self)

    }
    
    
    @IBAction func KabobButtons(_ sender: Any) {
        self.performSegue(withIdentifier: "GuestToUser", sender: self)

        
    }
    
    @IBAction func ALLDEAL(_ sender: Any) {
        self.performSegue(withIdentifier: "GuestToUser", sender: self)

    }
    
    
    @IBOutlet weak var label2: UILabel!
    
    
    @IBAction func slider2(_ sender: UISlider) {
        label2.text = String(Int(sender.value))
    }
    
    @IBOutlet var optionItems: [UIButton]!
    
    
    @IBAction func HomePressed2(_ sender: Any) {
        self.performSegue(withIdentifier: "HomeSegue2", sender: self)
    }
    
    @IBAction func SignUpPagebutton(_ sender: Any) {
        self.performSegue(withIdentifier: "SignUpPageSegoe2", sender: self)
        
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
        
    }
    
    
    @IBAction func optionSelected(_ sender: UIButton) {
        guard let title = sender.currentTitle, let option = Options(rawValue: title) else{
            return
        }
        
        switch option {
        case .news:
            self.performSegue(withIdentifier: "NewsSegue2", sender: self)
        case .social:
            self.performSegue(withIdentifier: "SocialSegue2", sender: self)
        case .locations:
            self.performSegue(withIdentifier: "LocationsSegue2", sender: self)
        default:
            return
        }
    }

}
