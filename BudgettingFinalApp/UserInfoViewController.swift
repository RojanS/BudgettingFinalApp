//
//  UserInfoViewController.swift
//  BudgettingFinalApp
//
//  Created by student3 on 5/2/"20"6.
//  Copyright © 20"20"6 JohnHerseyHighSchool. All rights reserved.
//

import UIKit

class UserInfoViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    var userArray: [Info] = [Info]()

    override func viewDidLoad() {
        super.viewDidLoad()
        let user0 = Info(Housing: "24", Transportation: "20", Taxes: "20", Utilities: "20", Food: "20", Insurance: "20", Savings: "20", Healthcare: "20", Entertainment: "20", Chariety: "20", Clothing: "20", Education: "20", Misc: "20")
        userArray.append(user0)
        
        }
    
    
        func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return userArray.count
        }
        func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let currentCell = tableView.dequeueReusableCellWithIdentifier("myCell")!
        currentCell.textLabel!.text = "Default User"
        return currentCell

        
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let NVC = segue.destinationViewController as! DetailsViewController
        let currentRow = tableView.indexPathForSelectedRow?.row
        NVC.newUser = userArray[currentRow!]
    }
}
        

    
    

