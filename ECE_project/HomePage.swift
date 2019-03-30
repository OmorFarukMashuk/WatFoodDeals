//
//  HomePage.swift
//  ECE_project
//
//  Created by Mohd Azfar Nazim on 2019-03-03.
//  Copyright © 2019 Ibrahim  Khalil. All rights reserved.
//

import UIKit
import CoreData
class HomePage: UIViewController {
    var context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext

    @IBOutlet weak var akLabel: UILabel!
    @IBOutlet weak var shinLabel: UILabel!
    @IBOutlet weak var kabobLabel: UILabel!
    @IBOutlet weak var mongolLabel: UILabel!
    @IBOutlet weak var alleyLabel: UILabel!
    
    @IBOutlet weak var halalButton: UIButton!
    @IBOutlet weak var kosherButton: UIButton!
    @IBOutlet weak var continentalButton: UIButton!
    @IBOutlet weak var vegButton: UIButton!
    @IBOutlet weak var chineseButton: UIButton!
    @IBOutlet weak var glutenButton: UIButton!
    
    struct GlobalVariable{
        static var cuisineflag = false
        static var rstrntflag = false
        static var alldealflag = false
        static var customerReschoice = ""
        static var cuisine = ""

    }
    
    @IBAction func HalalButton(_ sender: Any) {
        GlobalVariable.cuisineflag = true
        GlobalVariable.cuisine = halalButton.currentTitle!
        print(GlobalVariable.cuisine)
        self.performSegue(withIdentifier: "HomepageToUserEndSegue", sender: self)
        
       

    }
    
    @IBAction func KosherButton(_ sender: Any) {
        GlobalVariable.cuisineflag = true
        GlobalVariable.cuisine = kosherButton.currentTitle!

        self.performSegue(withIdentifier: "HomepageToUserEndSegue", sender: self)
    }
    
    
    @IBAction func ContinentalButton(_ sender: Any) {
        GlobalVariable.cuisineflag = true
        GlobalVariable.cuisine = continentalButton.currentTitle!

        self.performSegue(withIdentifier: "HomepageToUserEndSegue", sender: self)
    }
    
    @IBAction func VegButton(_ sender: Any) {
        GlobalVariable.cuisineflag = true
        GlobalVariable.cuisine = vegButton.currentTitle!

        self.performSegue(withIdentifier: "HomepageToUserEndSegue", sender: self)
    }
    
    @IBAction func ChineseButton(_ sender: Any) {
        GlobalVariable.cuisineflag = true
        GlobalVariable.cuisine = chineseButton.currentTitle!

        self.performSegue(withIdentifier: "HomepageToUserEndSegue", sender: self)
    }
    
    
    @IBAction func GlutenButton(_ sender: Any) {self.performSegue(withIdentifier: "HomepageToUserEndSegue", sender: self)
        GlobalVariable.cuisineflag = true
        GlobalVariable.cuisine = glutenButton.currentTitle!

        self.performSegue(withIdentifier: "HomepageToUserEndSegue", sender: self)
    }
    
    
    
    
    
    
    
    @IBAction func AuntysButton(_ sender: Any) {
        GlobalVariable.rstrntflag = true
        GlobalVariable.customerReschoice = self.akLabel.text!
        //print(GlobalVariable.customerReschoice + "lol")
        self.performSegue(withIdentifier: "HomepageToUserEndSegue", sender: self)
        
        

    
    }
    
    @IBAction func ShinwaButton(_ sender: Any) {
        GlobalVariable.rstrntflag = true
        GlobalVariable.customerReschoice = self.shinLabel.text!
        self.performSegue(withIdentifier: "HomepageToUserEndSegue", sender: self)

    }
    
    
    @IBAction func KabobButton(_ sender: Any) {
        GlobalVariable.rstrntflag = true
        GlobalVariable.customerReschoice = self.kabobLabel.text!
        self.performSegue(withIdentifier: "HomepageToUserEndSegue", sender: self)

    }
    
    
    @IBAction func MongolianButton(_ sender: Any) {
        GlobalVariable.rstrntflag = true
        GlobalVariable.customerReschoice = self.mongolLabel.text!
        self.performSegue(withIdentifier: "HomepageToUserEndSegue", sender: self)

    }
    
    
    @IBAction func AlleyButton(_ sender: Any) {
        GlobalVariable.rstrntflag = true
        GlobalVariable.customerReschoice = self.alleyLabel.text!
        self.performSegue(withIdentifier: "HomepageToUserEndSegue", sender: self)

    }
    
    
    @IBAction func DealButton(_ sender: Any) {
        GlobalVariable.alldealflag = true
        self.performSegue(withIdentifier: "HomepageToUserEndSegue", sender: self)

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
            HomeViewController.GlobalVariable.loginflag = false
            self.performSegue(withIdentifier: "LogOutSegue", sender: self)
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
