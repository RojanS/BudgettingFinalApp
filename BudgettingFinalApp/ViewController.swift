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
    }
    @IBOutlet weak var helpButton: UIButton!
    
    

   

}

