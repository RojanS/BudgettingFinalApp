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
    @IBOutlet weak var taxesTextField: UITextField!
    @IBOutlet weak var utilitiesTextField: UITextField!
    @IBOutlet weak var foodTextField: UITextField!
    @IBOutlet weak var insuranceTextField: UITextField!
    @IBOutlet weak var debtTextField: UITextField!
    @IBOutlet weak var HealthCareTextField: UITextField!
    @IBOutlet weak var entertainmentTextField: UITextField!
    @IBOutlet weak var charietyTextField: UITextField!
    @IBOutlet weak var clothingTextField: UITextField!
    @IBOutlet weak var educationTextField: UITextField!
    @IBOutlet weak var miscTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        housingTextField.text = newUser.Housing
        

    }
    
   
}
