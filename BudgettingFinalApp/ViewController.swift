//  PATRYK FERUS
// Ronan Collins
//  ViewController.swift
//  BudgettingFinalApp
//
//  Created by student3 on 5/2/16.
//  Copyright © 2016 JohnHerseyHighSchool. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var backgroundImage: UIImageView!
    @IBOutlet weak var firstImageView: UIImageView!
    @IBOutlet weak var startButton: UIButton!

    @IBOutlet weak var secondImageView: UIImageView!
    
    @IBOutlet weak var backgroundOne: UIButton!
    @IBOutlet weak var backgroundTwo: UIButton!
    @IBOutlet weak var backgroundThree: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        firstImageView.image = UIImage(named: "dollar sign")
        secondImageView.image = UIImage(named: "dollar sign")
    }
    
    override func viewWillAppear(animated: Bool) {
        startButton.tintColor =  UIApplication.sharedApplication().keyWindow?.tintColor
        helpButton.tintColor = UIApplication.sharedApplication().keyWindow?.tintColor
        backgroundOne.tintColor = UIApplication.sharedApplication().keyWindow?.tintColor
        backgroundTwo.tintColor = UIApplication.sharedApplication().keyWindow?.tintColor
        backgroundThree.tintColor = UIApplication.sharedApplication().keyWindow?.tintColor
    }
    @IBOutlet weak var helpButton: UIButton!
    
    @IBAction func background1(sender: UIButton) {
    }
    @IBAction func background2(sender: UIButton) {
        
    }
    @IBAction func background3(sender: UIButton) {
    }
    

   

}

