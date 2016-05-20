//
//  OptionsViewController.swift
//  BudgettingFinalApp
//
//  Created by student3 on 5/3/16.
//  Copyright © 2016 JohnHerseyHighSchool. All rights reserved.
//
//
import UIKit

class OptionsViewController: UIViewController {


    @IBOutlet weak var optionsView: UIView!
    @IBAction func redButton(sender: UIButton) {
        func setTintColor (color: UIColor)
        {
            UIApplication.sharedApplication().keyWindow?.tintColor = color
        }
        switch sender.titleLabel!.text!
        {
        case "Red" : setTintColor(UIColor.redColor())
        case "Blue" : setTintColor(UIColor.blueColor())
        case "Purple" : setTintColor(UIColor.purpleColor())
        default : self.dismissViewControllerAnimated(true, completion: nil)
        }
    }
    
    @IBAction func changeRedBackground(sender: UIButton) {
        
    }
    @IBAction func changeBlueBackground(sender: UIButton) {
    }
    @IBAction func changePinkBackground(sender: UIButton) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func backroundButton(sender: UIButton) {
    }
}
