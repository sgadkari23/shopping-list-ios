//
//  SaveViewController.swift
//  ShoppingList
//  Name : Supriya Gadkari
//  Student Id: 301140872
//  Date : 10/28/20.
//  set array finalItems using userdefaults
//

import UIKit
// SaveViewController clase  for listing save items
class SaveViewController: SwipeLeftTableViewController {
    
    //variable declaration
    let userDefaults = UserDefaults.standard

    @IBOutlet var ShoppingItemListTableView: UITableView!
    
    //loads view
    override func viewDidLoad() {
        super.viewDidLoad()
        ShoppingItemListTableView.delegate = self
        ShoppingItemListTableView.dataSource = self
    }
    
    // return counts of items
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let arraycount = userDefaults.integer(forKey: "ShoppingListItemsCount")
        return arraycount
    }
    
    //display items
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let finalItems = userDefaults.array(forKey: "ShoppingListItems")
        let cell = super.tableView(tableView, cellForRowAt: indexPath)
        cell.textLabel?.text = finalItems![indexPath.row] as? String
        return cell
    }
    
    // delete item from array
    override func updateModel(at indexPath: IndexPath) {
        var finalItems = userDefaults.array(forKey: "ShoppingListItems")
        finalItems!.remove(at: indexPath.row)
        userDefaults.set(finalItems, forKey: "ShoppingListItems")
        userDefaults.set(finalItems?.count, forKey: "ShoppingListItemsCount")
        userDefaults.synchronize()
    }
}
