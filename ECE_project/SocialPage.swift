//
//  SocialPage.swift
//  ECE_project
//
//  Created by Shahriar Real on 2019-03-07.
//  Copyright © 2019 Ibrahim  Khalil. All rights reserved.
//

import UIKit

class SocialPage: UIViewController {
    
    @IBAction func AntysKitchen(_ sender: Any) {
       
        UIApplication.shared.open(URL(string: "https://www.facebook.com/AuntysWaterloo/")! as URL, options[:] , completionHandler: nil)
    }
    
    @IBAction func Shinwa(_ sender: Any) {
    }
    
    @IBAction func KabobHut(_ sender: Any) {
    }
    
    @IBAction func MongolianGrill(_ sender: Any) {
    }
    
    
    @IBAction func TheAlley(_ sender: Any) {
    }
    
    
    override func viewDidLoad() {
        
        
        
        
        
        
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
}
