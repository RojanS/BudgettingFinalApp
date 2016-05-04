//
//  OptionsViewController.swift
//  BudgettingFinalApp
//
//  Created by student3 on 5/3/16.
//  Copyright © 2016 JohnHerseyHighSchool. All rights reserved.
//

import UIKit

class OptionsViewController: UIViewController {


    @IBAction func redButton(sender: UIButton) {
        func setTintColor (color: UIColor)
        {
            UIApplication.sharedApplication().keyWindow?.tintColor = color
            self.dismissViewControllerAnimated(true, completion: nil)
        }
        setTintColor(UIColor.redColor())
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

}
