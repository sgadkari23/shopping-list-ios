//
//  ViewController.swift
//  ShoppingList
//
//  Created by Supriya Gadkari on 10/28/20.
//

import UIKit

class ViewController: UIViewController {
    
 
    @IBOutlet var firstItemStepper: UIStepper!
    @IBOutlet var firstItemQuantity: UILabel!
    
    @IBOutlet var seconItemStepper: UIStepper!
    @IBOutlet var secondItemQuantity: UILabel!
    
    @IBOutlet var thirdItemStepper: UIStepper!
    @IBOutlet var thirdItemQuantity: UILabel!
    
    @IBOutlet var fourItemStepper: UIStepper!
    @IBOutlet var fourthItemQuantity: UILabel!
    
    @IBOutlet var fifthItemStepper: UIStepper!
    @IBOutlet var fifthItemQuantity: UILabel!
    
    @IBOutlet var listName: UITextField!
    
    @IBOutlet var firstItemName: UITextField!
    @IBOutlet var secondItemName: UITextField!
    @IBOutlet var thirdItemName: UITextField!
    @IBOutlet var fourthItemName: UITextField!
    @IBOutlet var fifthItemName: UITextField!
    
    @IBOutlet var scrollView: UIScrollView!
    @IBOutlet var scrollViewContainer: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       // firstItemStepper.autorepeat = true
        //firstItemStepper.isContinuous = true
        //firstItemQuantity.text = firstItemStepper.value.description
    }
    
   
    
    @IBAction func firstStepperPressed(_ sender: UIStepper) {
        
        firstItemQuantity.text = Int(firstItemStepper.value).description
        
        secondItemQuantity.text = Int(seconItemStepper.value).description
        
        thirdItemQuantity.text = Int(thirdItemStepper.value).description
        
        fourthItemQuantity.text = Int(fourItemStepper.value).description
        
        fifthItemQuantity.text = Int(fifthItemStepper.value).description
    }
    
    
    
    @IBAction func cancelButtonPressed(_ sender: UIButton) {
    
        listName.text = "Shopping List"
        
        firstItemStepper.value = 0.0
        firstItemQuantity.text = "0"
        firstItemName.text = " "
        firstItemName.placeholder = "Item name"
        
        seconItemStepper.value = 0.0
        secondItemQuantity.text = "0"
        secondItemName.text = " "
        secondItemName.placeholder = "Item name"
        
        thirdItemStepper.value = 0.0
        thirdItemQuantity.text = "0"
        thirdItemName.text = " "
        thirdItemName.placeholder = "Item name"
        
        fourItemStepper.value = 0.0
        fourthItemQuantity.text = "0"
        fourthItemName.text = " "
        fourthItemName.placeholder = "Item name"
        
        fifthItemStepper.value = 0.0
        fifthItemQuantity.text = "0"
        fifthItemName.text = " "
        fifthItemName.placeholder = "Item name"
    }
 
    
    @IBAction func saveShoppingItemsOnButtonPressed(_ sender: UIButton) {
    
        let userDefaults = UserDefaults.standard
        var shoppingItemList = [String]()
        
        shoppingItemList += [String(firstItemName.text!)]
        shoppingItemList += [String(secondItemName.text!)]
        shoppingItemList += [String(thirdItemName.text!)]
        shoppingItemList += [String(fourthItemName.text!)]
        shoppingItemList += [String(fifthItemName.text!)]
        print(shoppingItemList)
        userDefaults.set(shoppingItemList, forKey: "ShoppingListItems")
    }

    
}

