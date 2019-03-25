//
//  ViewController.swift
//  ECE_project
//
//  Created by Ibrahim  Khalil on 2/3/19.
//  Copyright © 2019 Ibrahim  Khalil. All rights reserved.
//

import UIKit
import CoreData

class HomeViewController: UIViewController {
    
//    let name = "ECE651"
//    let pw = "1234"
    

   
    
    @IBOutlet weak var userName: UITextField!
    
    @IBOutlet weak var passWord: UITextField!
    
    @IBOutlet weak var errormessage: UILabel!
    
    @IBOutlet weak var error: UILabel!
    
    var context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    
    struct GlobalVariable{
        static var loginflag = false
    }
    
    @IBAction func LoginPressed(_ sender: Any) {
        
//        self.performSegue(withIdentifier: "RestaurantEndSegue", sender: self)
//
//        self.performSegue(withIdentifier: "UserDealSegue", sender: self)
        
        
        
        
        
        //        if userName.text == "ECE651" && passWord.text == "1234" {
        //        self.performSegue(withIdentifier: "HomePageSegue", sender: self)
        //
        //
        //        }
        //
        //                else {
        //                    errormessage.text = "Wrong credentials, TRY AGAIN!"
        //                        return
        //
        //                }
        
        
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "Users")
        //request.predicate = NSPredicate(format: "age = %@", "12")
        request.returnsObjectsAsFaults = false
        do {
            
            //var loginflag = false
            let result = try context.fetch(request)
            for data in result as! [NSManagedObject] {
                
                //print(data.value(forKey: "email") as! String)
                if((data.value(forKey: "email") as! String) == userName.text){
                    if((data.value(forKey: "password") as! String) == passWord.text){
                        self.performSegue(withIdentifier: "HomePageSegue", sender: self)
                        GlobalVariable.loginflag = true
                    }
                    
                }
            }
            
            if(GlobalVariable.loginflag == false){
                let alert = UIAlertController(title: "Failed", message: "incorrect username/password", preferredStyle: .alert)
                let action = UIAlertAction(title: "OK", style: .default)
                alert.addAction(action)
                present(alert, animated: true, completion: nil)
                return
                
            }
            
        }
        catch {
            
            //print("Failed")
            
        }
        
    }
    
    @IBAction func SignUpPressed(_ sender: Any) {
        self.performSegue(withIdentifier: "SignUpPageSegue", sender: self)
        
        
    }
    
    @IBAction func GuestPressed(_ sender: Any) {
        self.performSegue(withIdentifier: "GuestSegue", sender: self)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    class localShop{
        
        // waterloo plaza or not will be checked here
        
        
    }
    
    class studentID{
        
        // whether the student is waterloo guy or not will be checked here
        // could be via email id or could be checked by student number
    }
    
    
    class addGoogleMap{
        
        // location service will be on based on the user requirement
        
    }
    class features{
        
        
        // list of backend features available
        // some featuers will be hidden to the user, only available to developers
        
        
    }
    
}

