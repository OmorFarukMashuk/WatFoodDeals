//
//  AddDishView.swift
//  ECE_project
//
//  Created by Omor Faruk Mashuk on 2019-03-25.
//  Copyright © 2019 Ibrahim  Khalil. All rights reserved.
//

import UIKit
import CoreData

class AddDishView: UIViewController,UIPickerViewDataSource, UIPickerViewDelegate{
    
    @IBOutlet var dishtext: UITextField!
    @IBOutlet var pricetext: UITextField!
    @IBOutlet var typetext: UITextField!
    @IBOutlet var msgtext: UITextField!
    
    var alertTitle = ""
    var alertMessage = ""
    
    var context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    var dish = ["Halal", "Veg.", "Kosher", "Gluten-free", "Continental", "Chinese"]
    var picker = UIPickerView()
    
    @IBOutlet var dishTypes: UITextField!
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        picker.delegate = self
        picker.dataSource = self
        
        dishTypes.inputView = picker
    }
    
    
    
    
    public func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return dish.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component : Int)  -> String? {
        return dish[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        dishTypes.text = dish[row]
        self.view.endEditing(false)
    }
    
    func ShowAlert(){
        let alert = UIAlertController(title: alertTitle, message: alertMessage, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
        return
    }
    @IBAction func backButton(_ sender: Any) {
        
        
            self.performSegue(withIdentifier: "DishToResSegue", sender: self)
        
        
        
        
    }
    
    @IBAction func PostNewDish(_ sender: Any) {
        //let request = NSFetchRequest<NSFetchRequestResult>(entityName: "Deals")
        //request.predicate = NSPredicate(format: "age = %@", "12")
        //request.returnsObjectsAsFaults = false
        do {
            
            //var loginflag = false
            
            
            print(HomeViewController.GlobalVariable.rstname)
            let dt = self.dishtext!.text
            let tt = self.typetext!.text
            let pt = self.pricetext!.text
           
            if ((dt?.isEmpty)! || (pt?.isEmpty)!||(tt?.isEmpty)!){
                //self.emailtext.layer.borderColor = UIColor.red.cgColor
                
                alertTitle = "Failed"
                alertMessage = "Please Fill Up Required Fields"
                ShowAlert()
                return
            }
            
            
            
            
//            print(self.dishtext!.text!)
//            print(self.typetext!.text!)
//            print(self.pricetext!.text!)
//            print(self.msgtext!.text!)
//            print(HomeViewController.GlobalVariable.rstname)
            
            
            let newDeal = NSEntityDescription.insertNewObject(forEntityName: "Deals", into: context)
            
            //let msg = self.msgtext!.text
            print("0")
            newDeal.setValue(self.dishtext!.text, forKey: "dishName")
            print("1")
            newDeal.setValue(self.typetext!.text, forKey: "dishType")
            print("2")
            let price = Double(self.pricetext!.text!)
            newDeal.setValue(price, forKey: "price")
            print("3")
            newDeal.setValue(self.msgtext!.text, forKey: "message")
            print("4")
            newDeal.setValue(HomeViewController.GlobalVariable.rstname, forKey: "resName")
            print("5")
            
            try context.save()
            self.dishtext!.text = ""
            self.typetext!.text = ""
            self.typetext!.text = ""
            self.pricetext!.text = ""
            self.msgtext!.text = ""
            alertTitle = "Done"
            alertMessage = "Deal Added"
            ShowAlert()
            
            //self.performSegue(withIdentifier: "HomeSegue1", sender: self)
            
            
        } catch {
            print(error)
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
