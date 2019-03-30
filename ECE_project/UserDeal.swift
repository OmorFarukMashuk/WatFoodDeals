//
//  UserDeal.swift
//  ECE_project
//
//  Created by Shahriar Real on 2019-03-25.
//  Copyright © 2019 Ibrahim  Khalil. All rights reserved.
//

import UIKit
import CoreData

class UserDeal : UIViewController{
    
    
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    var context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    var costflag = false
    var deallist = [Deals]()
    
    @IBAction func backsButton(_ sender: Any) {
        
        if(HomeViewController.GlobalVariable.loginflag == true){
            
            HomePage.GlobalVariable.cuisineflag = false
            HomePage.GlobalVariable.rstrntflag = false
            HomePage.GlobalVariable.alldealflag = false
            costflag = false
            self.performSegue(withIdentifier: "UserToHomepage1", sender: self)
            
        }
        
        else{
            self.performSegue(withIdentifier: "UserToGuest", sender: self)

        }

    }
    
    func getResName() -> String {

        return HomePage.GlobalVariable.customerReschoice
    }
    
    func getCuisineName() -> String {
        return HomePage.GlobalVariable.cuisine
    }
    
    @IBAction func Slider(_ sender: UISlider) {
        label.text = String(Int(sender.value))
    }
    
    
    func FetchData(){
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "Deals")
        
        // filter data
        if(HomePage.GlobalVariable.cuisineflag == true){
            print(getCuisineName())
            
            if(costflag == true){
                request.predicate = NSPredicate(format: "price <= %@ AND dishType = %@", label.text!,getCuisineName())

            }
            else{
                request.predicate = NSPredicate(format: "dishType = %@", getCuisineName())
            }
        }
        if(HomePage.GlobalVariable.alldealflag == true){
            if(costflag == true){
                request.predicate = NSPredicate(format: "price <= %@", label.text!)
                
            }
        }
        
        if(HomePage.GlobalVariable.rstrntflag == true){
            if(costflag == true){
                request.predicate = NSPredicate(format: "price <= %@ AND resName = %@", label.text!,getResName())
                
            }
            else{
                request.predicate = NSPredicate(format: "resName = %@", getResName())
            }

        }
        
        
        request.returnsObjectsAsFaults = false
        
        do {
            
            //var loginflag = false
            let deallist = try context.fetch(request)
            self.deallist = deallist as! [Deals]
            
            print(deallist.count)
            self.tableView.reloadData()
        } catch {}
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        //super.viewWillAppear(<#T##animated: Bool##Bool#>)
        FetchData()
    }
    
    
    
    @IBAction func RefreshPressed(_ sender: Any) {
        costflag = true
        FetchData()
    }
    
}

extension UserDeal: UITableViewDataSource {
    func tableView(_ tableView: UITableView,numberOfRowsInSection section: Int) -> Int {
        return deallist.count
    }
    
    func tableView(_ tableView: UITableView,cellForRowAt indexPath: IndexPath)-> UITableViewCell {
        
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: nil)
        cell.textLabel?.text = deallist[indexPath.row].dishName
        //cell.detailTextLabel?.text = String(people[indexPath.row].age)
        var text = "C$" + String(deallist[indexPath.row].price)
        text = text + "   " + deallist[indexPath.row].resName!
        text = text + "   " + deallist[indexPath.row].dishType!
        text = text + "   " + deallist[indexPath.row].message!
        
        cell.detailTextLabel?.text = text
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if(editingStyle == .delete)
        {
            let deal = deallist[indexPath.row]
            deallist.remove(at: indexPath.row)
            context.delete(deal)
            do{
                try context.save()
                tableView.reloadData()
            }catch{
            }
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

