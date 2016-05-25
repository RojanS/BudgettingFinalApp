// Patryk Ferus
// Ronan Collins
//  ViewController.swift
//  BudgettingFinalApp
//
//  Created by student3 on 5/2/16.
//  Copyright © 2016 JohnHerseyHighSchool. All rights reserved.


import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var helpButton: UIButton!
    @IBOutlet weak var orangeBackgroundButton: UIButton!
    @IBOutlet weak var newBlueBackgroundButton: UIButton!
    @IBOutlet weak var redBackgroundButton: UIButton!
    @IBOutlet weak var backgroundView: UIView!
    @IBOutlet weak var firstImageView: UIImageView!
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var secondImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        firstImageView.image = UIImage(named: "dollar sign")
        secondImageView.image = UIImage(named: "dollar sign")
    }
    
    override func viewWillAppear(animated: Bool) {
        startButton.tintColor =  UIApplication.sharedApplication().keyWindow?.tintColor
        helpButton.tintColor = UIApplication.sharedApplication().keyWindow?.tintColor
        orangeBackgroundButton.tintColor = UIApplication.sharedApplication().keyWindow?.tintColor
        newBlueBackgroundButton.tintColor = UIApplication.sharedApplication().keyWindow?.tintColor
        redBackgroundButton.tintColor = UIApplication.sharedApplication().keyWindow?.tintColor
    }
    @IBAction func changeBackgroundColor1(sender: UIButton) {
        backgroundView.backgroundColor = UIColor.cyanColor()
    }
    @IBAction func changeBackgroundColor2(sender: UIButton) {
        backgroundView.backgroundColor = UIColor.darkGrayColor()
    }
    @IBAction func changeBackgroundColor3(sender: UIButton) {
        backgroundView.backgroundColor = UIColor.whiteColor()
    }

    

}


