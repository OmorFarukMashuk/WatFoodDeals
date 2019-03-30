//
//  NewsPage.swift
//  ECE_project
//
//  Created by Shahriar Real on 2019-03-07.
//  Copyright © 2019 Ibrahim  Khalil. All rights reserved.
//



import UIKit

class NewsPage: UIViewController {
   
    
    @IBAction func backButton(_ sender: Any) {
        
        if(HomeViewController.GlobalVariable.loginflag == true){
            self.performSegue(withIdentifier: "NtoHSegue", sender: self)
        }
        else{
            self.performSegue(withIdentifier: "NtoGSegue", sender: self)
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
}
