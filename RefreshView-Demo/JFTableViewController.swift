
//
//  JFTableViewController.swift
//  RefreshView-Demo
//
//  Created by Jefferson on 15/9/18.
//  Copyright © 2015年 Jefferson. All rights reserved.
//

import UIKit

private let reuseID = "cellID"

class JFTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self


        tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: reuseID)
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(reuseID, forIndexPath: indexPath)
        
        
        cell.detailTextLabel?.text = "这不是演习"

        cell.textLabel?.text = "再也没有这些风景了"
        
        return cell
    }
    
    
}
