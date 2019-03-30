//
//  GuestPage.swift
//  ECE_project
//
//  Created by Mohd Azfar Nazim on 2019-03-03.
//  Copyright © 2019 Ibrahim  Khalil. All rights reserved.
//

import UIKit

class GuestPage: UIViewController {
    
    
    var alertTitle = "Registration Required"
    var alertMessage = "Please Sign-Up to Get Preferred Restaurant Deals"
    @IBOutlet weak var akLabel: UILabel!
    @IBOutlet weak var shinLabel: UILabel!
    @IBOutlet weak var kabobLabel: UILabel!
    
    
    func ShowAlert(){
        let alert = UIAlertController(title: alertTitle, message: alertMessage, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
        return
    }
    @IBAction func ShinwaButtons(_ sender: Any) {
        //HomePage.GlobalVariable.rstrntflag = true
        //HomePage.GlobalVariable.customerReschoice = self.akLabel.text!
        //self.performSegue(withIdentifier: "GuestToUser", sender: self)
        ShowAlert()
    }
    
    
    @IBAction func ShinwaMainButton(_ sender: Any) {
        //HomePage.GlobalVariable.rstrntflag = true
        //HomePage.GlobalVariable.customerReschoice = self.shinLabel.text!
        //self.performSegue(withIdentifier: "GuestToUser", sender: self)
        
        ShowAlert()

    }
    
    
    @IBAction func KabobButtons(_ sender: Any) {
        //HomePage.GlobalVariable.rstrntflag = true
        //HomePage.GlobalVariable.customerReschoice = self.kabobLabel.text!
        //self.performSegue(withIdentifier: "GuestToUser", sender: self)
        ShowAlert()

        
    }
    
    @IBAction func ALLDEAL(_ sender: Any) {
        HomePage.GlobalVariable.alldealflag = true
        self.performSegue(withIdentifier: "GuestToUser", sender: self)
        //ShowAlert()

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
    
    class RoundedButton: UIButton {
        override func awakeFromNib() {
            super.awakeFromNib()
            
            layer.borderWidth = 1/UIScreen.main.nativeScale
            contentEdgeInsets = UIEdgeInsets(top: 0, left: 8, bottom: 0, right: 8)
            titleLabel?.adjustsFontForContentSizeCategory = true
        }
        
        override func layoutSubviews() {
            super.layoutSubviews()
            layer.cornerRadius = frame.height/2
            layer.borderColor = isEnabled ? tintColor.cgColor : UIColor.lightGray.cgColor
        }
    }

}
