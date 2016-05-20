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
        let user0 = Info(Name: "Default User 1", Housing: "904.56", Transportation: "527.66", Utilities: "302.52", Food: "527.66", Insurance: "188.45", Savings: "150.76", Healthcare: "226.14", Entertainment: "188.45", Chariety: "150.76", Clothing: "150.76", Misc: "452.28")
        userArray.append(user0)
        let user1 = Info(Name: "Default User 2", Housing: "1055.32", Transportation: "376.90", Utilities: "226.14", Food: "452.28", Insurance: "226.14", Savings: "188.45", Healthcare: "376.90", Entertainment: "301.52", Chariety: "150.76", Clothing: "188.45", Misc: "226.14")
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



















