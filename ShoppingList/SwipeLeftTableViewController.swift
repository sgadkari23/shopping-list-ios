//
//  SwipeLeftTableViewController.swift
//  ShoppingList
//
//  Created by Girish Dhoble on 10/30/20.
//

import UIKit
import SwipeCellKit


class SwipeLeftTableViewController: UITableViewController, SwipeTableViewCellDelegate{
    
    var cell: UITableViewCell?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //let userDefaults = UserDefaults.standard
        //let finalItems = userDefaults.array(forKey: "ShoppingListItems")
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ItemCell", for: indexPath) as! SwipeTableViewCell
        //cell.textLabel?.text = "Hello"
        ///cell.textLabel?.text = finalItems![indexPath.row] as? String
        cell.delegate = self
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath, for orientation: SwipeActionsOrientation) -> [SwipeAction]?
    {
        guard orientation == .right else { return nil }
        let deleteAction = SwipeAction(style: .destructive, title: "Delete") { action, indexPath in
             print("delete Cell")
            
            self.updateModel(at: indexPath)
         }
         // customize the action appearance
        deleteAction.image = UIImage(named: "delete")
        return [deleteAction]
        
    }
    
    
    func tableView(_ tableView: UITableView, editActionsOptionsForRowAt indexPath: IndexPath, for orientation: SwipeActionsOrientation) -> SwipeOptions {
        var options = SwipeOptions()
        options.expansionStyle = .destructive
        options.transitionStyle = .border
        return options
    }
    
    func  updateModel(at indexPath: IndexPath) {
        
    }

  
    // MARK: - Table view data source

   /* override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

    */

}
