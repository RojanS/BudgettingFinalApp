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

    @IBOutlet weak var myTextView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        myTextView.text = "In order to fully utilize the app, Piggy Bank, one must have an understanding of the intricacies that this app entails. On the title screen, there are 6 buttons to play with. START, COLOR, CYAN, MAGENTA, ORANGE, and the HELP button that brought you to this page here. The HELP button obviously brings you to this helpful page that explains how the app works. Simply click on the DISMISS button in order to head back to the title screen. Next up is the COLOR button. The COLOR button brings you to a new page (similar to this one) that lets you change the color of all the buttons for anyone's decorative needs. Just click the CLOSE button in order to go back. Near the bottom of the title page, there are 3 color buttons. These buttons will change the background color in order to accommodate the decorative personalities even more. Finally, the large START button. The START button brings you to the actual use of the app. In order to create your budget, a tap of the + button will let you create your own budget. Just type in how much money will be spent each month on each category from Housing to Charity. Once that is completed you can click on your new budget and get started. If you're in a rush so you don't want to create your own, then we have already created two different default profiles just in case. Once one of the profiles are selected, a new page will appear. This page shows how much money is left for each category in the month. Any time money is being spent, type in that exact ammount into its corresponding category and tap the button next to it. If done correctly, the ammount of money available to you will go down the ammount that you just spent. And that's it, have fun exploring the app, and creating your budget."

    }
    
    @IBAction func Dismiss(sender: UIBarButtonItem) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    override func viewWillAppear(animated: Bool) {
        dismissButton.tintColor =  UIApplication.sharedApplication().keyWindow?.tintColor

    
    }

   }
