//
//  UserInfoViewController.swift
//  BudgettingFinalApp
//
//  Created by student3 on 5/2/"20"6.
//  Copyright © 20"20"6 JohnHerseyHighSchool. All rights reserved.
//

import UIKit

class UserInfoViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UITextFieldDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    var userArray: [Info] = [Info]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let user0 = Info(Name: "Default User 1", Housing: "24", Transportation: "14", Utilities: "8", Food: "14", Insurance: "5", Savings: "4", Healthcare: "6", Entertainment: "5", Chariety: "4", Clothing: "4", Misc: "12")
        userArray.append(user0)
        let user1 = Info(Name: "Default User 2", Housing: "28", Transportation: "10", Utilities: "6", Food: "12", Insurance: "6", Savings: "5", Healthcare: "10", Entertainment: "8", Chariety: "4", Clothing: "5", Misc: "6")
        userArray.append(user1)
        
        
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return userArray.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let currentCell = tableView.dequeueReusableCellWithIdentifier("myCell")!
        let currentUser = userArray[indexPath.row]
        currentCell.textLabel!.text = currentUser.Name
        return currentCell
        
        
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let NVC = segue.destinationViewController as! DetailsViewController
        let currentRow = tableView.indexPathForSelectedRow?.row
        NVC.newUser = userArray[currentRow!]
    }
    @IBAction func createButton(sender: UIBarButtonItem) {
        let alert = UIAlertController(title: "Enter desired values", message: "", preferredStyle: .Alert)
        alert.addTextFieldWithConfigurationHandler(nil)
        var housingAlert = alert.textFields?.first
        presentViewController(alert, animated: true, completion: nil)
        let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.Cancel, handler: nil)
        alert.addAction(okAction)
    
    }

}





