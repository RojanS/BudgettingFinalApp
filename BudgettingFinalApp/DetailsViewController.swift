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
        var housingInt: Double? = Double(housingTextField.text!)
        let housingAm: Double? = Double(housingAmount.text!)
        if housingAm != nil
        {
            housingTextField.text = "\((housingInt)! - (housingAm)!)"
        }
         housingInt = Double(housingTextField.text!)

        if housingInt < 0
        {
            housingTextField.textColor = UIColor.redColor()
        }
        
    }
    
    @IBAction func transportationAdd(sender: UIButton) {
        var transInt: Double? = Double(transportationTextField.text!)
        let transAm: Double? = Double(transportationAmount.text!)
        if transAm != nil
        {
            transportationTextField.text = "\((transInt)! - (transAm)!)"
        }
        transInt = Double(transportationTextField.text!)
        
        if transInt < 0
        {
            transportationTextField.textColor = UIColor.redColor()
        }
        
    }
   
    @IBAction func insuranceAdd(sender: UIButton) {
        var insuranceInt: Double? = Double(insuranceTextField.text!)
        let insuranceAm: Double? = Double(insuranceAmount.text!)
        if insuranceAm != nil
        {
            insuranceTextField.text = "\((insuranceInt)! - (insuranceAm)!)"
        }
        insuranceInt = Double(insuranceTextField.text!)
        if insuranceInt < 10
        {
            insuranceTextField.textColor = UIColor.yellowColor()

        }

        if insuranceInt < 0
        {
            insuranceTextField.textColor = UIColor.redColor()
        }
        

    }
    
    @IBAction func savingsAdd(sender: UIButton) {
        let savingsInt: Double? = Double(savingsTextField.text!)
        let savingsAm: Double? = Double(savingsAmount.text!)
        if savingsAm != nil
        {
            savingsTextField.text = "\((savingsInt)! - (savingsAm)!)"
        }
    }
    
    @IBAction func charietyAdd(sender: UIButton) {
        let charietyInt: Double? = Double(savingsTextField.text!)
        let charietyAm: Double? = Double(savingsAmount.text!)
        if charietyAm != nil
        {
           charietyTextField.text = "\((charietyInt)! - (charietyAm)!)"
        }
        
    }
    
    @IBAction func clothingAdd(sender: UIButton) {
        let clothingInt: Double? = Double(clothingTextField.text!)
        let clothingAm: Double? = Double(clothingAmount.text!)
        if clothingAm != nil
        {
            clothingTextField.text = "\((clothingInt)! - (clothingAm)!)"
        }
    }
    
    @IBAction func utilitiesAdd(sender: UIButton) {
        let utilitiesInt: Double? = Double(utilitiesTextField.text!)
        let utilitiesAm: Double? = Double(utilitiesAmount.text!)
        if utilitiesAm != nil
        {
            utilitiesTextField.text = "\((utilitiesInt)! - (utilitiesAm)!)"
        }
    }
    
    @IBAction func foodAdd(sender: UIButton) {
        let foodInt: Double? = Double(foodTextField.text!)
        let foodAm: Double? = Double(foodAmount.text!)
        if foodAm != nil
        {
            foodTextField.text = "\((foodInt)! - (foodAm)!)"
        }
    }
    
    @IBAction func healthcareAdd(sender: UIButton) {
        let healthcareInt: Double? = Double(HealthCareTextField.text!)
        let healthcareAm: Double? = Double(healthcareAmount.text!)
        if healthcareAm != nil
        {
            HealthCareTextField.text = "\((healthcareInt)! - (healthcareAm)!)"
        }
    }
    
    @IBAction func entertainmentAdd(sender: UIButton) {
        let enterInt: Double? = Double(entertainmentTextField.text!)
        let enterAm: Double? = Double(entertainmentAmount.text!)
        if enterAm != nil
        {
           entertainmentTextField.text = "\((enterInt)! - (enterAm)!)"
        }
    }
    
    @IBAction func miscAdd(sender: UIButton) {
        let miscInt: Double? = Double(miscTextField.text!)
        let miscAm: Double? = Double(miscAmount.text!)
        if miscAm != nil
        {
            miscTextField.text = "\((miscInt)! - (miscAm)!)"
        }
    }
}








































