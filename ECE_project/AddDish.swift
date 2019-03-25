//
//  AddDish.swift
//  ECE_project
//
//  Created by Shahriar Real on 2019-03-25.
//  Copyright © 2019 Ibrahim  Khalil. All rights reserved.
//

import UIKit


class AddDish : UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    var dish = ["Halal", "Veg.", "Kosher", "Gluten-free", "Continental", "Chinese"]
    var picker = UIPickerView()
    
    @IBOutlet weak var Types: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        picker.delegate = self
        picker.dataSource = self
        
        Types.inputView = picker
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
        Types.text = dish[row]
        self.view.endEditing(false)
    }
}
