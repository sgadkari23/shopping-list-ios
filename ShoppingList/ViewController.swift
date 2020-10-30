//
//  ViewController.swift
//  ShoppingList
//  Name : Supriya Gadkari
//  Student ID : 301140872
//  Date : 10/28/20.
//  Changes Made : add null check to the textbox
//

import UIKit
// ViewController class for home page
class ViewController: UIViewController, UITextFieldDelegate {
    
   // variable declaration for all user inputs
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
    
    // loads view
    override func viewDidLoad() {
        super.viewDidLoad()
        self.firstItemName.delegate = self
        self.secondItemName.delegate = self
        self.thirdItemName.delegate = self
        self.fourthItemName.delegate = self
        self.fifthItemName.delegate = self
        self.listName.delegate = self
    }
    
    // hide keyboard
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
           return true
    }
   
    // increment item Quantity
    @IBAction func firstStepperPressed(_ sender: UIStepper) {
        
        firstItemQuantity.text = Int(firstItemStepper.value).description
        
        secondItemQuantity.text = Int(seconItemStepper.value).description
        
        thirdItemQuantity.text = Int(thirdItemStepper.value).description
        
        fourthItemQuantity.text = Int(fourItemStepper.value).description
        
        fifthItemQuantity.text = Int(fifthItemStepper.value).description
    }
    
    // reset shoppintlist
    @IBAction func cancelButtonPressed(_ sender: UIButton) {
    
        listName.text = "Shopping List"
        
        firstItemStepper.value = 0.0
        firstItemQuantity.text = "0"
        firstItemName.text = ""
        firstItemName.placeholder = "Item name"
        
        seconItemStepper.value = 0.0
        secondItemQuantity.text = "0"
        secondItemName.text = ""
        secondItemName.placeholder = "Item name"
        
        thirdItemStepper.value = 0.0
        thirdItemQuantity.text = "0"
        thirdItemName.text = ""
        thirdItemName.placeholder = "Item name"
        
        fourItemStepper.value = 0.0
        fourthItemQuantity.text = "0"
        fourthItemName.text = ""
        fourthItemName.placeholder = "Item name"
        
        fifthItemStepper.value = 0.0
        fifthItemQuantity.text = "0"
        fifthItemName.text = ""
        fifthItemName.placeholder = "Item name"
    }
 
    // saving list items using UserDefaults
    @IBAction func saveShoppingItemsOnButtonPressed(_ sender: UIButton) {
    
        let userDefaults = UserDefaults.standard
        var shoppingItemList = [String]()
        
        if(!firstItemName.text!.isEmpty){
            
            shoppingItemList += [String(firstItemName.text!)]
        }
        
        if(!secondItemName.text!.isEmpty){
            
            shoppingItemList += [String(secondItemName.text!)]
        }
        
        if(!thirdItemName.text!.isEmpty){
            
            shoppingItemList += [String(thirdItemName.text!)]
        }
        if(!fourthItemName.text!.isEmpty){
            
            shoppingItemList += [String(fourthItemName.text!)]
        }
        if(!fifthItemName.text!.isEmpty){
            
            shoppingItemList += [String(fifthItemName.text!)]
        }
        
        let count:Int = shoppingItemList.count
        
        userDefaults.set(shoppingItemList, forKey: "ShoppingListItems")
        userDefaults.set(count, forKey: "ShoppingListItemsCount")
    }

    
}

