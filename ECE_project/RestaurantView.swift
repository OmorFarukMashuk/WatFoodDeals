//
//  RestaurantView.swift
//  ECE_project
//
//  Created by Omor Faruk Mashuk on 2019-03-25.
//  Copyright © 2019 Ibrahim  Khalil. All rights reserved.
//

import Foundation
import UIKit
import CoreData

class RestaurantView : UIViewController{
    
    var context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var deallist = [Deals]()
    
    
    override func viewDidLoad() {
        
        
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "Deals")
        //request.predicate = NSPredicate(format: "dishType = %@", "Kosher")
        //request.predicate = NSPredicate(format: "price < %@", "2")
        request.returnsObjectsAsFaults = false
        do {
            
            //var loginflag = false
            let deallist = try context.fetch(request)
            self.deallist = deallist as! [Deals]
            
            print(deallist.count)
            self.tableView.reloadData()
        } catch {}
        
        
    }
    
    
    
    
    
    @IBAction func AddButton101(_ sender: Any) {
        
        //        self.performSegue(withIdentifier: "AddDishSegue", sender: self)
        
        self.performSegue(withIdentifier: "AddDishViewSegue", sender: self)
        
        
    }
}

extension RestaurantView: UITableViewDataSource {
    func tableView(_ tableView: UITableView,numberOfRowsInSection section: Int) -> Int {
        return deallist.count
    }
    
    func tableView(_ tableView: UITableView,cellForRowAt indexPath: IndexPath)-> UITableViewCell {
        
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: nil)
        cell.textLabel?.text = deallist[indexPath.row].dishName
        //cell.detailTextLabel?.text = String(people[indexPath.row].age)
        var text = "C$" + String(deallist[indexPath.row].price)
        text = text + "   " + deallist[indexPath.row].dishType!
        text = text + "   " + deallist[indexPath.row].message!

//        text = "C$" + deallist[indexPath.row].price + "   " +
//            deallist[indexPath.row].dishType! + "   " + deallist[indexPath.row].message!
        cell.detailTextLabel?.text = text
        
        
        
        return cell
        
        
        
        //print("ok")
        
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
}
