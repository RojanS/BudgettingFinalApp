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
        alert.addTextFieldWithConfigurationHandler({textField in
            textField.placeholder = "User Name"
            })
        alert.addTextFieldWithConfigurationHandler({textField in
            textField.placeholder = "Housing %"
            })
        alert.addTextFieldWithConfigurationHandler({textField in
            textField.placeholder = "Transportation %"
            })
        alert.addTextFieldWithConfigurationHandler({textField in
            textField.placeholder = "Utilities %"
            })
        alert.addTextFieldWithConfigurationHandler({textField in
            textField.placeholder = "Food %"
            })
        alert.addTextFieldWithConfigurationHandler({textField in
            textField.placeholder = "Insurance %"
            })
        alert.addTextFieldWithConfigurationHandler({textField in
            textField.placeholder = "Savings %"
            })
        alert.addTextFieldWithConfigurationHandler({textField in
            textField.placeholder = "HealthCare %"
            })
        alert.addTextFieldWithConfigurationHandler({textField in
            textField.placeholder = "Entertainment %"
            })
        alert.addTextFieldWithConfigurationHandler({textField in
            textField.placeholder = "Chairety %"
            })
        alert.addTextFieldWithConfigurationHandler({textField in
            textField.placeholder = "Clothing %"
            })
        alert.addTextFieldWithConfigurationHandler({textField in
            textField.placeholder = "Misc %"
            })
        
        
        
        let okAction = UIAlertAction(title: "CANCEL", style: UIAlertActionStyle.Destructive, handler: nil)
        let saveAction = UIAlertAction(title: "SAVE", style: .Cancel, handler: {action in
            var textfields = alert.textFields! as [UITextField]
        
            let createdUser = Info(Name: textfields[0].text!, Housing: textfields[1].text!, Transportation: textfields[2].text!, Utilities: textfields[3].text!, Food: textfields[4].text!, Insurance: textfields[5].text!, Savings: textfields[6].text!, Healthcare: textfields[7].text!, Entertainment: textfields[8].text!, Chariety: textfields[9].text!, Clothing: textfields[10].text!, Misc: textfields[11].text!)
                self.userArray.append(createdUser)
                self.tableView.reloadData()
            })
        alert.addAction(okAction)
        alert.addAction(saveAction)
        presentViewController(alert, animated: true, completion: nil)
    
        
    
    }

}



















