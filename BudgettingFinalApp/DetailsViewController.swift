//
//  DetailsViewController.swift
//  BudgettingFinalApp
//
//  Created by student3 on 5/6/16.
//  Copyright © 2016 JohnHerseyHighSchool. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {
    
    var newUser = Info()

    @IBOutlet weak var housingTextField: UITextField!
    @IBOutlet weak var transportationTextField: UITextField!
    @IBOutlet weak var utilitiesTextField: UITextField!
    @IBOutlet weak var foodTextField: UITextField!
    @IBOutlet weak var insuranceTextField: UITextField!
    @IBOutlet weak var HealthCareTextField: UITextField!
    @IBOutlet weak var entertainmentTextField: UITextField!
    @IBOutlet weak var charietyTextField: UITextField!
    @IBOutlet weak var clothingTextField: UITextField!
    @IBOutlet weak var miscTextField: UITextField!
    @IBOutlet weak var savingsTextField: UITextField!
    @IBOutlet weak var testingLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = newUser.Name
        housingTextField.text = newUser.Housing
        transportationTextField.text = newUser.Transportation
        utilitiesTextField.text = newUser.Utilities
        foodTextField.text = newUser.Food
        insuranceTextField.text = newUser.Insurance
        HealthCareTextField.text = newUser.Healthcare
        entertainmentTextField.text = newUser.Entertainment
        charietyTextField.text = newUser.Chariety
        clothingTextField.text = newUser.Clothing
        miscTextField.text = newUser.Misc
        savingsTextField.text = newUser.Savings

    }
    
    
   
}
