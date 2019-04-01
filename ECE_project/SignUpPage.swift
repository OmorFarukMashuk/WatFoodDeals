//
//  SignUpPage.swift
//  ECE_project
//
//  Created by Mohd Azfar Nazim on 2019-03-03.
//  Copyright © 2019 Ibrahim  Khalil. All rights reserved.
//

import UIKit
import CoreData

class SignUpPage: UIViewController {
    
    
    @IBOutlet var passtext: UITextField!
    @IBOutlet var confirmpass: UITextField!
    @IBOutlet var emailtext: UITextField!
    @IBOutlet var nametext: UITextField!
    
    @IBOutlet var halalbutton: UIButton!
    @IBOutlet var vegbutton: UIButton!
    @IBOutlet var glutenbutton: UIButton!
    @IBOutlet var continentalbutton: UIButton!
    @IBOutlet var chinesebutton: UIButton!
    @IBOutlet var kosherbutton: UIButton!
    
    @IBOutlet var cuisinelabel: UILabel!
    
    @IBOutlet var usrType: UISegmentedControl!
    var user = "Customer"
    
    
    var alertTitle = ""
    var alertMessage = ""
    
    
    // getting the coredata odb context
    var context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    // variable to store user preferred cuisine
    var cuisine = ""
    
    // back button listener
    @IBAction func HomePressed1(_ sender: Any) {
        
        self.performSegue(withIdentifier: "HomeSegue1", sender: self)
    }
    
    
    func UserExists() -> Bool {
        var userflag = false
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "Users")
        request.returnsObjectsAsFaults = false
        do {
            
            let result = try context.fetch(request)
            for data in result as! [NSManagedObject] {
                
                //print(data.value(forKey: "email") as! String)
                if((data.value(forKey: "email") as! String) == emailtext.text){
                    userflag = true
                    break
                    
                }
            }
        }
        catch {
            
            print(error)
            
        }
        if userflag == true {
            return true
        }
        else{
            return false
        }
    }
    
    func ShowAlert(){
        let alert = UIAlertController(title: alertTitle, message: alertMessage, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
        return
    }
    
    @IBAction func halalPressed(_ sender: Any) {
        
        cuisine = "Halal"
        alertTitle = "Your Selected Cuisine"
        alertMessage = cuisine
        ShowAlert()
        
    }
    @IBAction func vegPressed(_ sender: Any) {
        
        cuisine = "Veg."
        alertTitle = "Your Selected Cuisine"
        alertMessage = cuisine
        ShowAlert()
    }
    @IBAction func kosherPressed(_ sender: Any) {
        cuisine = "Kosher"
        alertTitle = "Your Selected Cuisine"
        alertMessage = cuisine
        ShowAlert()
        
    }
    @IBAction func glutenfreePressed(_ sender: Any) {
        cuisine = "Gluten-free"
        alertTitle = "Your Selected Cuisine"
        alertMessage = cuisine
        ShowAlert()
    }
    @IBAction func continentalPressed(_ sender: Any) {
        cuisine = "Continental"
        alertTitle = "Your Selected Cuisine"
        alertMessage = cuisine
        ShowAlert()
    }
    @IBAction func chinesePressed(_ sender: Any) {
        cuisine = "Chinese"
        alertTitle = "Your Selected Cuisine"
        alertMessage = cuisine
        ShowAlert()
    }
    
    @IBAction func UserSegmentChanged(_ sender: Any) {
        switch usrType.selectedSegmentIndex
        {
        case 0:
            user = "Customer"
            halalbutton.isHidden = false
            vegbutton.isHidden = false
            glutenbutton.isHidden = false
            continentalbutton.isHidden = false
            kosherbutton.isHidden = false
            chinesebutton.isHidden = false
            cuisinelabel.isHidden = false
            print(user)
        case 1:
            user = "Restaurant"
            halalbutton.isHidden = true
            vegbutton.isHidden = true
            glutenbutton.isHidden = true
            continentalbutton.isHidden = true
            kosherbutton.isHidden = true
            chinesebutton.isHidden = true
            cuisinelabel.isHidden = true
            print(user)
        default:
            user = "Customer"
            halalbutton.isHidden = false
            vegbutton.isHidden = false
            glutenbutton.isHidden = false
            continentalbutton.isHidden = false
            kosherbutton.isHidden = false
            chinesebutton.isHidden = false
            cuisinelabel.isHidden = false
            print(user)
            break
        }
    }
    
    // confirm button listener
    @IBAction func ConfirmRegPressed(_ sender: Any) {
        
        //getting values from textfiield
        
        let email = self.emailtext!.text
        let pass = self.passtext!.text
        let pass2 = self.confirmpass!.text
        let name = self.nametext!.text
        
        
        
        
        do {
            if ((email?.isEmpty)! || (pass?.isEmpty)!||(name?.isEmpty)!){
                //self.emailtext.layer.borderColor = UIColor.red.cgColor
                
                alertTitle = "Failed"
                alertMessage = "Please Fill Up Required Fields"
                ShowAlert()
                return
            }
            //        if (pass?.isEmpty)!{
            //            self.passtext.layer.borderColor = UIColor.red.cgColor
            //            return
            //        }
            
            
            if (pass2 != pass){
                alertTitle = "Failed"
                alertMessage = "password not matched"
                ShowAlert()
                return
            }
            
            
            //Check cuisine selection
            if(user == "Customer" && cuisine == ""){
                alertTitle = "Failed"
                alertMessage = "Please Select a Cuisine"
                ShowAlert()
                return
            }
            
            
            if(UserExists() == true){
                alertTitle = "Failed"
                alertMessage = "User ID already exists"
                ShowAlert()
                return
            }
            
            
            let newUser = NSEntityDescription.insertNewObject(forEntityName: "Users", into: context)
            
            newUser.setValue(self.nametext!.text, forKey: "name")
            newUser.setValue(self.emailtext!.text, forKey: "email")
            newUser.setValue(self.passtext!.text, forKey: "password")
            newUser.setValue(cuisine, forKey: "pcuisine")
            newUser.setValue(user, forKey: "type")
            
            try context.save()
            self.emailtext!.text = ""
            self.passtext!.text = ""
            self.confirmpass!.text = ""
            alertTitle = "Done"
            alertMessage = "Successfully Registered"
            ShowAlert()
            
            //self.performSegue(withIdentifier: "HomeSegue1", sender: self)
            
            
        } catch {
            print(error)
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
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
