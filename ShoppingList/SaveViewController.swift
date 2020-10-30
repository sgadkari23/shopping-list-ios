//
//  SaveViewController.swift
//  ShoppingList
//
//  Created by Supriya Gadkari on 10/30/20.
//

import UIKit

class SaveViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet var ShoppingItemListTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
     
        ShoppingItemListTableView.delegate = self
        ShoppingItemListTableView.dataSource = self

        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let userDefaults = UserDefaults.standard
        let finalItems = userDefaults.array(forKey: "ShoppingListItems")
        let cell = tableView.dequeueReusableCell(withIdentifier: "ItemCell", for: indexPath)
        //cell.textLabel?.text = "Hello"
        cell.textLabel?.text = finalItems![indexPath.row] as? String
        return cell
    }
    

}
