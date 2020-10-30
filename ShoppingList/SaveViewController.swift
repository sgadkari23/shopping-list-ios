//
//  SaveViewController.swift
//  ShoppingList
//
//  Created by Supriya Gadkari on 10/30/20.
//

import UIKit
//import  SwipeCellKit

class SaveViewController: SwipeLeftTableViewController {
    
    @IBOutlet var ShoppingItemListTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
     
        ShoppingItemListTableView.delegate = self
        ShoppingItemListTableView.dataSource = self

        // Do any additional setup after loading the view.
    }
    let userDefaults = UserDefaults.standard
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let arraycount = userDefaults.integer(forKey: "ShoppingListItemsCount")
        return arraycount
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       // let userDefaults = UserDefaults.standard
        let finalItems = userDefaults.array(forKey: "ShoppingListItems")
       // let cell = tableView.dequeueReusableCell(withIdentifier: "ItemCell", for: indexPath)
        //cell.textLabel?.text = "Hello"
        let cell = super.tableView(tableView, cellForRowAt: indexPath)
        cell.textLabel?.text = finalItems![indexPath.row] as? String
        return cell
    }
    
    override func updateModel(at indexPath: IndexPath) {
        //let userDefaults = UserDefaults.standard
        //var finalItems = userDefaults.array(forKey: "ShoppingListItems")
        ///let keyValue = indexPath
        //finalItems?.remove(at: keyValue)
        var finalItems = userDefaults.array(forKey: "ShoppingListItems")
        finalItems!.remove(at: indexPath.row)
        userDefaults.set(finalItems, forKey: "ShoppingListItems")
        userDefaults.set(finalItems?.count, forKey: "ShoppingListItemsCount")
        userDefaults.synchronize()
    }

}
