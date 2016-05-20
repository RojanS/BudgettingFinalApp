//
//  HelpViewController.swift
//  BudgettingFinalApp
//
//  Created by student3 on 5/2/16.
//  Copyright © 2016 JohnHerseyHighSchool. All rights reserved.
//
//
import UIKit

class HelpViewController: UIViewController {
    @IBOutlet weak var dismissButton: UIBarButtonItem!

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func Dismiss(sender: UIBarButtonItem) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    override func viewWillAppear(animated: Bool) {
        dismissButton.tintColor =  UIApplication.sharedApplication().keyWindow?.tintColor

    
    }

   }
