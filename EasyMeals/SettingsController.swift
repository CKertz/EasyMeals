//
//  SettingsController.swift
//  EasyMeals
//
//  Created by Cooper on 8/27/17.
//  Copyright © 2017 TBD. All rights reserved.
//

import UIKit
import Firebase

class SettingsController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Logout", style: .plain, target: self, action: nil)
        //  self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
        self.navigationController?.navigationItem.leftBarButtonItem?.tintColor = UIColor.white
        tableView.backgroundColor = UIColor(colorLiteralRed: 0.25, green: 0.79, blue: 0.64, alpha: 1)
       // collectionView?.backgroundColor = UIColor(colorLiteralRed: 0.25, green: 0.79, blue: 0.64, alpha: 1)
    }
}
