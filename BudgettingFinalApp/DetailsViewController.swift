//
//  DetailsViewController.swift
//  BudgettingFinalApp
//
//  Created by student3 on 5/6/16.
//  Copyright © 2016 JohnHerseyHighSchool. All rights reserved.
//
//
import UIKit

class DetailsViewController: UIViewController {
    
    var newUser = Info()

    @IBOutlet weak var miscAmount: UITextField!
    @IBOutlet weak var entertainmentAmount: UITextField!
    @IBOutlet weak var healthcareAmount: UITextField!
    @IBOutlet weak var foodAmount: UITextField!
    @IBOutlet weak var utilitiesAmount: UITextField!
    @IBOutlet weak var clothingAmount: UITextField!
    @IBOutlet weak var charietyAmount: UITextField!
    @IBOutlet weak var savingsAmount: UITextField!
    @IBOutlet weak var insuranceAmount: UITextField!
    @IBOutlet weak var transportationAmount: UITextField!
    @IBOutlet weak var housingAmount: UITextField!
    
    @IBOutlet weak var miscButton: UIButton!
    @IBOutlet weak var entertainmentButton: UIButton!
    @IBOutlet weak var healthcareButton: UIButton!
    @IBOutlet weak var foodButton: UIButton!
    @IBOutlet weak var UtilitiesButton: UIButton!
    @IBOutlet weak var clothingButton: UIButton!
    @IBOutlet weak var charietyButton: UIButton!
    @IBOutlet weak var savingsButton: UIButton!
    @IBOutlet weak var insuranceButton: UIButton!
    @IBOutlet weak var transportationButton: UIButton!
    @IBOutlet weak var housingButton: UIButton!
    
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
        miscButton.tintColor =  UIApplication.sharedApplication().keyWindow?.tintColor
        entertainmentButton.tintColor =  UIApplication.sharedApplication().keyWindow?.tintColor
        healthcareButton.tintColor =  UIApplication.sharedApplication().keyWindow?.tintColor
        foodButton.tintColor = UIApplication.sharedApplication().keyWindow?.tintColor
        UtilitiesButton.tintColor = UIApplication.sharedApplication().keyWindow?.tintColor
        clothingButton.tintColor = UIApplication.sharedApplication().keyWindow?.tintColor
        charietyButton.tintColor = UIApplication.sharedApplication().keyWindow?.tintColor
        savingsButton.tintColor = UIApplication.sharedApplication().keyWindow?.tintColor
        insuranceButton.tintColor = UIApplication.sharedApplication().keyWindow?.tintColor
        transportationButton.tintColor = UIApplication.sharedApplication().keyWindow?.tintColor
        housingButton.tintColor = UIApplication.sharedApplication().keyWindow?.tintColor
        
    }
    
    @IBAction func housingAdd(sender: UIButton) {
        let housingInt: Double? = Double(housingTextField.text!)
        let housingAm: Double? = Double(housingAmount.text!)
        
        housingTextField.text! = "\(housingInt! - housingAm!)"
        
        
    }
    
    @IBAction func transportationAdd(sender: UIButton) {
    }
   
    @IBAction func insuranceAdd(sender: UIButton) {
    }
    
    @IBAction func savingsAdd(sender: UIButton) {
    }
    
    @IBAction func charietyAdd(sender: UIButton) {
    }
    
    @IBAction func clothingAdd(sender: UIButton) {
    }
    
    @IBAction func utilitiesAdd(sender: UIButton) {
    }
    
    @IBAction func foodAdd(sender: UIButton) {
    }
    
    @IBAction func healthcareAdd(sender: UIButton) {
    }
    
    @IBAction func entertainmentAdd(sender: UIButton) {
    }
    
    @IBAction func miscAdd(sender: UIButton) {
    }
}








































