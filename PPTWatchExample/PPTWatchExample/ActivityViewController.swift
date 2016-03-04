//
//  ActivityViewController.swift
//  PPTWatchExample
//
//  Created by Analia on 3/4/16.
//  Copyright © 2016 Analia Rossi. All rights reserved.
//

import UIKit
import Alamofire

class ActivityViewController: UIViewController,UITableViewDataSource
{
    var name:String = ""
    @IBOutlet var tbl_activity: UITableView!
    var activity:[Activity] = []
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        ApiActivity.sharedInstance.getActivity { (data:Response<AnyObject,NSError>) -> () in
            let dic:[String:AnyObject] = data.result.value as! [String:AnyObject]
            let array:[[String:AnyObject]] = dic["Results"] as! [[String:AnyObject]]
            for dicc in array
            {
                let act:Activity = Activity(asDictionary: dicc)
                self.activity.append(act)
            }
        self.tbl_activity.reloadData()
        }
        configureTableView()
    }
    
    func configureTableView()
    {
        tbl_activity.dataSource = self
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return activity.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        var cell:UITableViewCell!
        let activityCell:ActivityTableViewCell = tableView.dequeueReusableCellWithIdentifier("ActivityTableViewCell", forIndexPath: indexPath) as! ActivityTableViewCell
        activityCell.configureLabelWhit(activity[indexPath.row])
        cell = activityCell
        return cell
    }
    

   
}
