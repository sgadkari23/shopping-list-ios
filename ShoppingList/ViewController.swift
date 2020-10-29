//
//  ViewController.swift
//  ShoppingList
//
//  Created by Girish Dhoble on 10/28/20.
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
    
    
}

