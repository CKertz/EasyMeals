//
//  TabMenuController.swift
//  EasyMeals
//
//  Created by Cooper on 8/8/17.
//  Copyright © 2017 TBD. All rights reserved.
//

import UIKit

class TabMenuController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        let layout = UICollectionViewFlowLayout()
        let listController = ListController(collectionViewLayout: layout)
        let navController = UINavigationController(rootViewController: listController)
        navController.tabBarItem.title = "Lists"
        navController.tabBarItem.image = UIImage(named: "list")
        
        viewControllers = [navController]
    }
}
