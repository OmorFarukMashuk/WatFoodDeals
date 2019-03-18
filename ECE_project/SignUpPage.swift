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
    
    var context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    @IBAction func HomePressed1(_ sender: Any) {
        
        self.performSegue(withIdentifier: "HomeSegue1", sender: self)
    }
    
    @IBAction func ConfirmRegPressed(_ sender: Any) {
        
        //getting values from textfiield
        let email = self.emailtext!.text
        let pass = self.passtext!.text
        let pass2 = self.confirmpass!.text
        
        if (email?.isEmpty)!{
            self.emailtext.layer.borderColor = UIColor.red.cgColor
            return
        }
        if (pass?.isEmpty)!{
            self.passtext.layer.borderColor = UIColor.red.cgColor
            return
        }
        if (pass2 != pass){
            let alert = UIAlertController(title: "Failed", message: "password not matched", preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .default)
            alert.addAction(action)
            present(alert, animated: true, completion: nil)
            return
        }
        
        let cuisine = "Halal"
        let newUser = NSEntityDescription.insertNewObject(forEntityName: "Users", into: context)
        newUser.setValue(self.emailtext!.text, forKey: "email")
        newUser.setValue(self.passtext!.text, forKey: "password")
        newUser.setValue(cuisine, forKey: "pcuisine")

        do {
            try context.save()
            self.emailtext!.text = ""
            self.passtext!.text = ""
            self.confirmpass!.text = ""
            let alert = UIAlertController(title: "Done", message: "Successfully registered", preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .default)
            alert.addAction(action)
            present(alert, animated: true, completion: nil)


        } catch {
            print(error)
        }
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
}
