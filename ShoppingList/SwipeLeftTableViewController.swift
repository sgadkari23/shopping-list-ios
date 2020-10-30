//
//  SwipeLeftTableViewController.swift
//  ShoppingList
//  Name :Supriya Gadkari
//  Student Id: 301140872
//  Date :10/28/20.
//  added functionality for deleting item on swipe right
// 

import UIKit
import SwipeCellKit

// SwipeLeftTableViewController class for deleting saved items
class SwipeLeftTableViewController: UITableViewController, SwipeTableViewCellDelegate{
    
    // variable declaration
    var cell: UITableViewCell?
    
    // loads view
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 80.0
    }
    
    // dequeueReusableCell as SwipeTableViewCell
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         
        let cell = tableView.dequeueReusableCell(withIdentifier: "ItemCell", for: indexPath) as! SwipeTableViewCell
        cell.delegate = self
        return cell
    }
    
    // handle action by updating model with deletion
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
    
    // customize the behavior of the swipe actions
    func tableView(_ tableView: UITableView, editActionsOptionsForRowAt indexPath: IndexPath, for orientation: SwipeActionsOrientation) -> SwipeOptions {
        var options = SwipeOptions()
        options.expansionStyle = .destructive
        options.transitionStyle = .border
        return options
    }
    // updateModel function
    func  updateModel(at indexPath: IndexPath) {
        print("Item deleted")
    }
}
